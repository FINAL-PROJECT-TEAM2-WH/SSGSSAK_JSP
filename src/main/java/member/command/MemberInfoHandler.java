package member.command;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import controller.CommandHandler;
import controller.DispatcherServlet;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;
import member.service.LoadInfoService;
import pay.persistence.PayDAO;
import pay.persistence.PayImpl;
public class MemberInfoHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		// String id 값으로 받고
		HttpSession session = request.getSession();
		
		if ( session == null) {
			System.out.println("> login Error");
			return null;
		}
		String id = (String)session.getAttribute("auth");
		
		
		System.out.println( " > MemberInfoHandler Handler get in : " + id);
		Connection conn = ConnectionProvider.getConnection();
		MemberDAO dao = new MemberDAOImpl(conn);
		LoadInfoService service = new LoadInfoService(dao);
		Map< String, String > infoMap = service.loadInfo(id);
		
		
		request.setAttribute("info", infoMap);
		
		List <String> infoList = new ArrayList(infoMap.keySet());
		
		Iterator<String> ir = infoList.iterator();
		
		while ( ir.hasNext()) {
			String key = ir.next();
			String value = infoMap.get(key);
			
			System.out.printf("Key : %s, Value : %s", key, value);
		}
		
		
		
		JdbcUtil.close(conn);
		String contextPath = request.getContextPath();
		String path = "/userinfo/userinfo.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		return null;
	}

	
		
}
