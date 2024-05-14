package search.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import search.service.SearchService;

public class SearchQueryHandler implements CommandHandler  {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String searchWord = null;
		
		String memid = null;
		
		try {
			HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
			searchWord = request.getParameter("searchWord");
			memid = (String) memSession.getAttribute("auth");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchHandler에서 오류");
		}
		SearchService searchService = SearchService.getInstance();
		
		//System.out.println(searchWord);
		//System.out.println(memid);

		return null;
		
	}
	
	
	
}
