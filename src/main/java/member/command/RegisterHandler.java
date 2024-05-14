package member.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.domain.AgreementDTO;
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
			
		String address = String.format("?zipcode=%s&jibunAddress=%s&detailAddress=%s" , zipcode,jibunAddress,detailAddress);
		
		
		// 2 번째 약관 옵션 
		String [] ssgInfo_mbrSvcAgreeTypdCd = request.getParameterValues("ssgInfoRcvAgreeDto.mbrSvcAgreeTypeCd");
		String emailRcvYn = request.getParameter("ssgInfoRcvAgreeDto.emailRcvYn");
		String smsRcvYn = request.getParameter("ssgInfoRcvAgreeDto.smsRcvYn");
		
		// 1번째 약관옵션
		String [] mbrSvcAgreeTypeCd = request.getParameterValues("mbrSvcAgreeTypeCd");
		String [] infoRcvMediaCd2 = request.getParameterValues("infoRcvMediaCd");

		// 배열 자체를 넘겨버리면 될 듯. 
		Map <String, String> agreement = new HashMap<String, String>();

		
		// 1번 옵션 
		// mbrSvcAgreeTypeCd
		if (mbrSvcAgreeTypeCd != null) {
			for (String string : mbrSvcAgreeTypeCd) {
				agreement.put(String.format("mbrSvcAgreeTypeCd=%s", string), "Y");
			}		
		}
		
		// mbrSvcAgreeTypeCd=20 sns 설정. 
		if ( infoRcvMediaCd2 != null) {		
			for (String string : infoRcvMediaCd2) {
				agreement.put(String.format("mbrSvcAgreeTypeCd=20_%s", string), "Y");
			};
		}
		
		
		// 2번 약관 옵션 . 
		// ssgInfo_mbrSvcAgreeTypdCd
		if( ssgInfo_mbrSvcAgreeTypdCd != null) {
			agreement.put("ssgInfoRcvAgree=10", "Y");
			if (emailRcvYn != null) {
				agreement.put("ssgInfoRcvAgree=10_email", emailRcvYn);
			}

			if (smsRcvYn != null) {
				agreement.put("ssgInfoRcvAgree=10_sms", smsRcvYn);
			}
		}	
		List<String> list = new ArrayList(agreement.keySet());
		
		for (String string : list) {
			System.out.printf("key : %s , value : %s \n", string, agreement.get(string));
		}

		MemberDTO member = new MemberDTO()
				.builder()
				.id(loginId)
				.address(address)
				.email(email)
				.name(name)
				.phoneNum(mbrCntsano+mbrCntsELno)
				.passwd(pwd)
				.build();

		Connection conn = ConnectionProvider.getConnection();
		MemberDAO dao = new MemberDAOImpl(conn);
		RegisterService service = new RegisterService(dao);

		int rowCount = service.register(member, agreement);
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
