package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Couponhandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod();
		if (method.equals("GET")) {
			return "/pay/coupon.jsp";
		} else {
			System.out.println("post 옴");
			return null;
		}
		
	}

}
