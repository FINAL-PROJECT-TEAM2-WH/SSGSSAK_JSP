package pay.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import pay.domain.CartDTO;
import pay.persistence.PayImpl;

public class Carthandler  implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Connection conn = ConnectionProvider.getConnection();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("auth");
		String method = request.getMethod();
		if (method.equals("GET")) {
			ArrayList<CartDTO> al = new ArrayList<CartDTO>();
			PayImpl pi = new PayImpl(conn);
			al = pi.selectcartinfo(id);
			request.setAttribute("al", al);
			return "/pay/cart.jsp";
		} else {
			
		}
		
		
		
		return null;
	}

}
