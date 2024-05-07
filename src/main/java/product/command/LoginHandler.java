package product.command;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
=======
import controller.CommandHandler;

>>>>>>> 4f46cbc8cd4ba9662ad10613b3d13c74febec12f
public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// post , get 그리고 get에서도 뒤에 쿼리 스트링이 오는 친구냐에 따라. 그리고 그 타입에 따라서 로그인 분기점을 정해줘야함. 
		
		String method = request.getMethod();
		 if ( method.equals("GET")) {
			 
			 //login
			 
		 } else {
			 // POST 요청 
			 System.out.println("kk");
			 
			 
			Enumeration<String> eum = request.getParameterNames();
			while ( eum.hasMoreElements()) {
				String sample = eum.nextElement();
				String value = request.getParameter(sample);
				System.out.println(sample + "  " + value);
				
				
				
				
			}
			 
		 }
		
		return null;
	}

}
