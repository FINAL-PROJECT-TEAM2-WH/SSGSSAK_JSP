package pay.command;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import controller.CommandHandler;
import pay.domain.CouponDTO;
import pay.domain.ProductDTO;
import pay.domain.UserDTO;
import pay.persistence.PayImpl;

public class Payhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod();
		
		int i = 0 ;
		if (method.equals("GET")) {
			ArrayList<ProductDTO> al = new ArrayList<ProductDTO>();
			PayImpl pi = new PayImpl();
			Enumeration<String> paramnames = request.getParameterNames();
			while (paramnames.hasMoreElements()) {
				String paramname = paramnames.nextElement();
				String paramvalue = request.getParameter(paramname);
				
				String[] values = paramvalue.split("/");
				
				al.add(pi.viewproduct(Integer.parseInt(values[0]), Integer.parseInt(values[1])));
				
			}
			request.setAttribute("al", al);
			ArrayList<UserDTO> al2 = new ArrayList<UserDTO>();
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("auth");
			al2 = pi.userinfo(id);
			request.setAttribute("user", al2);
			ArrayList<CouponDTO> al3 = new ArrayList<CouponDTO>();
			al3 = pi.mycouponview(id);
			request.setAttribute("coupon", al3);
			return request.getContextPath()+"/pay/p2.jsp";
		} else if (method.equals("POST")) {
			
		}
		return null;
	}

}
