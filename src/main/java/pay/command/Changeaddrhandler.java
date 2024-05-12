package pay.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import pay.domain.ShippingDTO;
import pay.persistence.PayImpl;

public class Changeaddrhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("auth");
		
		Connection conn = ConnectionProvider.getConnection();
		ArrayList<ShippingDTO> al = new ArrayList<>();
		ArrayList<ShippingDTO> al2 = new ArrayList<>();
		PayImpl pi = new PayImpl(conn);
		if (method.equals("GET")) {
			al = pi.getdefaultshipinfo(id);
			al2 = pi.getothershipinfo(id);
			request.setAttribute("al", al);
			request.setAttribute("al2", al2);
			conn.close();
			return "/pay/changeaddr.jsp";
		} 
		
		
		
		return null;
	}

}
