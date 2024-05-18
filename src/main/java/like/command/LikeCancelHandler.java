package like.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;
import com.util.ConnectionProvider;

import controller.CommandHandler;
import like.persistence.LikeDAO;
import like.persistence.LikeDAOImpl;
import like.service.LikeService;
import net.sf.json.JSONObject;

public class LikeCancelHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();

		if ( session == null) {
			System.out.println("> login Error");
			return null;
		}
		
		String id = (String)session.getAttribute("auth");
		
		String method = request.getMethod();
		Connection conn = ConnectionProvider.getConnection();
		LikeDAO dao = new LikeDAOImpl(conn);
		LikeService service = new LikeService(dao);
		int rowCount = 0 ;
		String resultJson = "{\"result\":";
		if ( method.equalsIgnoreCase("GET")) {
			
			
		} else {
			Enumeration<String> enum1 = request.getParameterNames();
		 
			ArrayList<String> productIdList = new ArrayList();
			while ( enum1.hasMoreElements()) {
				String string = enum1.nextElement();
				productIdList.add(string);				
			}		
			if (productIdList != null) {
				rowCount = service.cancelLike(productIdList, id);
			} else {
				
			}			
			System.out.print(rowCount);
			if (rowCount >= 1) {
				resultJson += "\"Success\"}";
			} else {
				resultJson += "\"Fail\"}";
			}	
		}		
		conn.close();
		/*
		 * String [] productId = request.getParameterValues("productId");
		 * System.out.println("> LikeCancelHandler GET IN...");
		 * 
		 * for (String string : productId) { System.out.println(string); }
		 */
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", resultJson);
		response.getWriter().write(jsonObject.toString());
		
		return null;
	}

}
