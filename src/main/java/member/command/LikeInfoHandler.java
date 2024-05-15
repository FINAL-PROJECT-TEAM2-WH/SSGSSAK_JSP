package member.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
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
		
		/*
		 * System.out.println(productList.isEmpty());
		 */
		/*
		 * Iterator<Map<String,String>> ir = productList.iterator();
		 * 
		 * while ( ir.hasNext()) { Map<String,String> product = ir.next(); List<String>
		 * list = new ArrayList(product.keySet()) ;
		 * 
		 * for (String string : list) { System.out.printf("key : %s || Value : %s",
		 * string, product.get(string)); }
		 * 
		 * }
		 */
		request.setAttribute("productList", productList);
		String path = "/userinfo/like/like.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		return null;
	}

}
