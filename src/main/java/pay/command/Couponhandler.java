package pay.command;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;
import controller.CommandHandler;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import pay.persistence.PayImpl;

public class Couponhandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod();
		if (method.equals("GET")) {
			return "/pay/coupon.jsp";
		} else {
			response.setContentType("application/json; charset=UTF-8");
			Connection conn = ConnectionProvider.getConnection();
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("auth");
			int couponnum =Integer.parseInt(request.getParameter("couponnum"));
			int result = 0 ;
			int dupli = 0 ;
			JSONObject jo = new JSONObject();
			JSONArray ja = new JSONArray();
			PayImpl ci = new PayImpl(conn);
			JSONObject jo2 = new JSONObject();
			dupli = ci.isduplicoupon(id, couponnum);
			if (dupli==0) {
				result = ci.issue(id, couponnum);
				jo2.put("success", result);
				ja.add(jo2);
				jo.put("coupon", ja);
				response.getWriter().write(jo.toString());
			} else {
				jo2.put("success", result);
				ja.add(jo2);
				jo.put("coupon", ja);
				response.getWriter().write(jo.toString());
			}
			conn.close();
			return null;
		}
		
	}

}
