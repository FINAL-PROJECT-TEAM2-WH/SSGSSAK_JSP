package pay.command;

import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import controller.CommandHandler;
import pay.domain.OrderedDTO;
import pay.domain.UserDTO;
import pay.persistence.PayImpl;

public class Paysuccesshandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String method = request.getMethod();
	    HttpSession session = request.getSession();
	    String id = (String) session.getAttribute("auth");
	    if (method.equals("GET")) {
			Connection conn = ConnectionProvider.getConnection();
			
			PayImpl pi = new PayImpl(conn);
			String pattern = "yyyy년 MM월 dd일 (E)";
			SimpleDateFormat sdf = new SimpleDateFormat(pattern);
			String today = sdf.format(System.currentTimeMillis());
			request.setAttribute("today", today);
			ArrayList<OrderedDTO> al = new ArrayList<OrderedDTO>();
			al = pi.selectorderinfo(id);
			request.setAttribute("al", al);
			JdbcUtil.close(conn);
			return "/pay/paysuccess.jsp";
		}
		return null;
	}

}
