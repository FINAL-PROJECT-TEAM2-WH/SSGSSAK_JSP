package pay.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import pay.domain.ProductDTO;
import pay.persistence.PayImpl;

public class Payhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod();
		
		
		if (method.equals("GET")) {
			ArrayList<ProductDTO> al = new ArrayList<ProductDTO>();
			String productid = request.getParameter("productid");
			int option = Integer.parseInt(request.getParameter("option"));
			int count = Integer.parseInt(request.getParameter("count"));
			PayImpl pi = new PayImpl();
			al = pi.viewpay(productid, option, count);
			
			request.setAttribute("al", al);
			
			return request.getContextPath()+"/pay/p2.jsp";
		} else if (method.equals("POST")) {
			
		}
		return null;
	}

}
