package like.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.util.ConnectionProvider;

import controller.CommandHandler;
import like.persistence.LikeDAO;
import like.persistence.LikeDAOImpl;
import like.service.LikeService;
import net.sf.json.JSONObject;

public class FolderHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// id값 하고 이름을 가져와서 새폴더 생성 하는 핸들러
		
		HttpSession session = request.getSession();

		if ( session == null) {
			System.out.println("> login Error");
			return null;
		}
		String id = (String)session.getAttribute("auth");	
		
	
		String folderName = request.getParameter("folderName");
		String method = request.getMethod();
		
		System.out.println(folderName);
	
		Connection conn = ConnectionProvider.getConnection();
		LikeDAO dao = new LikeDAOImpl(conn);
		LikeService service = new LikeService(dao);
		String resultJson = "{\"result\":";
		int rowCount = 0;
		JSONObject jsonObject = new JSONObject();
		// get
		if ( method.equalsIgnoreCase("GET")) {
			rowCount = service.addFolder(id, folderName);
			
			if ( rowCount >= 1) {
				resultJson += "\"Success\"}";
			} else {
				resultJson += "\"Fail\"}";
			}
			jsonObject.put("result", resultJson);
		} else {
			// post 
			ArrayList<String> folderList = service.getFolderName(id);	
			 // Gson 객체 생성
	        Gson gson = new Gson();

	        // ArrayList를 JSON으로 변환
	        String json = gson.toJson(folderList);
        	        
			// folder 로드하고 
	        jsonObject.put("result", json);
	        System.out.println(json);
		}	
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().write(jsonObject.toString());
		 
		
		return null;
	}

}
