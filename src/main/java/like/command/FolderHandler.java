package like.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import like.persistence.LikeDAO;
import like.persistence.LikeDAOImpl;
import like.service.LikeService;

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
		
		int rowCount = 0;
		// get
		if ( method.equalsIgnoreCase("GET")) {
			rowCount = service.addFolder(id, folderName);
		} else {
			// post 
			
			// folder 로드하고 
		}
		
		 
		
		return null;
	}

}
