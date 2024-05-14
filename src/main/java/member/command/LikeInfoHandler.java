package member.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LikeInfoService;
import member.service.LoadInfoService;

public class LikeInfoHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// GET 요청으로 id값을 기반으로 좋아요 한 목록에 대해서 뿌려줄 필요가 있음. 

		HttpSession session = request.getSession();

		if ( session == null) {
			System.out.println("> login Error");
			return null;
		}
		String id = (String)session.getAttribute("auth");	
		
		
		Connection conn = ConnectionProvider.getConnection();
		MemberDAO dao = new MemberDAOImpl(conn);
		LikeInfoService service = new LikeInfoService(dao);
		ArrayList<Map<String,String>> productList = service.getProductList(id);
		
		
		
		

		

		return null;
	}

}
