package member.command;

import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.domain.AgreeMentDTO;
import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LoginService;
import member.service.RegisterService;

public class RegisterHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" > RegisterHandler get in..");
		String email = request.getParameter("email");
		String mbrCntsELno = request.getParameter("mbrCntsELno");
		String mbrCntsano = request.getParameter("mbrCntsano");
		String zipcode = request.getParameter("zipcode");
		String name = request.getParameter("mbrDto.name");
		String pwd = request.getParameter("mbrDto.pwd");
		String loginId = request.getParameter("mbrDto.mbrLoginId");
		String detailAddress = request.getParameter("mbrDto.detailAddress");
		String jibunAddress = request.getParameter("mbrDto.jibunAddress");
		String mbrSvcAgreeTypdCd = request.getParameter("ssgInfoRcvAgreeDto.mbrSvcAgreeTypeCd");
		String emailRcvYn = request.getParameter("ssgInfoRcvAgreeDto.emailRcvYn");
		String smsRcvYn = request.getParameter("ssgInfoRcvAgreeDto.smsRcvYn");
		System.out.println(email + " " + mbrCntsELno);
		String address = String.format("?zipcode=%s&jibunAddress=%s&detailAddress=%s" , zipcode,jibunAddress,detailAddress);
		MemberDTO member = new MemberDTO()
				.builder()
				.id(loginId)
				.address(address)
				.email(email)
				.name(name)
				.phoneNum(mbrCntsano+mbrCntsELno)
				.passwd(pwd)
				.build();
		
		System.out.println(mbrSvcAgreeTypdCd + " " + emailRcvYn +  " " + smsRcvYn);
		
		Connection conn = ConnectionProvider.getConnection();
		MemberDAO dao = new MemberDAOImpl(conn);
		RegisterService service = new RegisterService(dao);
		
		int rowCount = service.register(member);
		String resultJson = "";
		if ( rowCount >= 1) {
			resultJson = "{\"result\":\"SUCCESS\"}";
			
		} else {
			resultJson = "{\"result\":\"FAIL\"}";
		}
		String contextPath = request.getContextPath();
		String path = "/member/join/formcheck.jsp";
		request.setAttribute("resultJson", resultJson);
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		return null;
	}

}
