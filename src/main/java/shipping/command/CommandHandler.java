package shipping.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {
	// SHIPPING
	String process(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
}
