package pay.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import controller.CommandHandler;

public class Paysuccesshandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String method = request.getMethod();
	    if (method.equals("GET")) {
			Connection conn = ConnectionProvider.getConnection();
			
		}
		return null;
	}

}
