package pay.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import pay.domain.CouponDTO;
import pay.domain.ProductDTO;
import pay.domain.UserDTO;
import pay.persistence.PayImpl;

public class Payhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod();
		Connection conn = ConnectionProvider.getConnection();
		int i = 0 ;
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("auth");
		PayImpl pi = new PayImpl(conn);
		if (method.equals("GET")) {
		
			ArrayList<ProductDTO> al = new ArrayList<ProductDTO>();
			ProductDTO dto = new ProductDTO();
			String optionids []  = request.getParameterValues("item1");
			int optionid = Integer.parseInt(optionids[0].split("/")[0]);
			int shipfee = pi.selectshipfee(optionid);
			Enumeration<String> paramnames = request.getParameterNames();
			while (paramnames.hasMoreElements()) {
				String paramname = paramnames.nextElement();
				String paramvalue = request.getParameter(paramname);
				
				String[] values = paramvalue.split("/");
				
				dto = pi.viewproduct(Integer.parseInt(values[0]), Integer.parseInt(values[1]));
				al.add(dto);
				
			}
			System.out.println(al);
			request.setAttribute("al", al);
			
			ArrayList<UserDTO> al2 = new ArrayList<UserDTO>();
			int result = pi.hasonceship(id);
			if (result==0) {
				al2 = pi.defaulutuserinfo(id);
			} else {
				al2 = pi.onceuserinfo(id);
			}
			
			
			request.setAttribute("user", al2);
			ArrayList<CouponDTO> al3 = new ArrayList<CouponDTO>();
			al3 = pi.mycouponview(id);
			request.setAttribute("coupon", al3);
			request.setAttribute("shipfee", shipfee);
			conn.close();
			return "/pay/p2.jsp?";
			
		} else if (method.equals("POST")) {
			String optionids =  request.getParameter("optionids");
			String usecouponids = request.getParameter("usecouponids");
			int shipnum = Integer.parseInt(request.getParameter("shipnum"));
			String shipmsg = request.getParameter("shipmsg");
			shipmsg = shipmsg.substring(1,shipmsg.length()-1);
			
			int usepoint ;
			if (request.getParameter("usepoint").equals("")) {
				usepoint = 0;
			} else  {
				usepoint = Integer.parseInt(request.getParameter("usepoint"));
			}
			
			String quantity = request.getParameter("quantity");
			JSONArray ja1 = JSONArray.fromObject(optionids);
			int optionid[] = new int[ja1.size()];
			for (int j = 0; j < ja1.size() ; j++) {
				optionid[j] = ja1.getInt(j);
			}
			JSONArray ja2 = JSONArray.fromObject(quantity);
			int quantitys[] = new int[ja2.size()];
			for (int j = 0; j < ja2.size() ; j++) {
				quantitys[j] = ja2.getInt(j);
			}
			JSONArray ja3 = JSONArray.fromObject(usecouponids);
			int usecoupons[] = new int[ja3.size()];
			for (int j = 0; j < ja3.size() ; j++) {
				usecoupons[j] = ja3.getInt(j);
			}
			System.out.println(usecoupons[0]);
			int lastprice = 0 ;
			for (int j = 0; j < optionid.length; j++) {
				lastprice += pi.resultprice(optionid[j],quantitys[j],usecoupons[j]);
				
			}
			
			int result = pi.insertpayre( usepoint , lastprice, id);
			int result6 = pi.insertpointrecord(id, (int)(lastprice*0.001));
			int result7 = pi.updatepoint2(id, (int)(lastprice*0.001));
			if (usepoint !=0) {
				int result2 = pi.updatepointre(id,usepoint );
				int result3 =pi.updatepoint(id, usepoint);
			}
			
			for (int j = 0; j < optionid.length; j++) {
				if (usecoupons[j] !=0 ) {
					int result4 = pi.deletecoupon(id,usecoupons[j]);
				}
				int result4 = pi.insertpaydetail(optionid[j],usecoupons[j],quantitys[j]);
				
			}
			int result5 = pi.insertshipinfo(shipnum, shipmsg);
			
			conn.close();
			
			response.setContentType("application/json; charset=UTF-8");
			JSONObject jo = new JSONObject();
			jo.put("url", "/pay/paysuccess.do");
			response.getWriter().write(jo.toString());
		}
		return null ;
	}

}
