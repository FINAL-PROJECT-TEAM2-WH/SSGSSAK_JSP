package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;

public class RegisterHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String email = request.getParameter("email");
		String mbrCntsELno = request.getParameter("mbrCntsELno");
		String mbrCntsano = request.getParameter("mbrCntsano");
		String zipcode = request.getParameter("zipcode");
		String name = request.getParameter("mbrDto.name");
		String pwd = request.getParameter("mbrDto.pwd");
		String loginId = request.getParameter("mbrDto.mbrLoginId");
		String detailAddress = request.getParameter("mbrDto.detailAddress");
		String jibunAddress = request.getParameter("mbrDto.jibunAddress");
		
		System.out.println(email + " " + mbrCntsELno);
		
		return null;
	}

}
