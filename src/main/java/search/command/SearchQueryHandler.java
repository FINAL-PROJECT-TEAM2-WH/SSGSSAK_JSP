package search.command;

import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import member.domain.PageDTO;
import search.domain.SearchVO;
import search.service.SearchService;

public class SearchQueryHandler implements CommandHandler  {

		SearchService searchService = SearchService.getInstance();
		
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String searchWord = null;
		int rowCount = 0;
		String memid = null;
		ArrayList<SearchVO> slist = null;
		int currentPage = 1;
		int numberPerPage = 40;
		String contextPath = request.getContextPath();
		int count = 0;
		PageDTO pdto = null;
		String[] srArr = null;
		LinkedHashMap<String, Long> slhm = null;
		LinkedHashMap<String, ArrayList<String>> clmap = null;
		LinkedHashMap<String, SearchVO> scCountMap = null;
		try {
			if( request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			if( request.getParameter("selVal") != null) {
				numberPerPage = Integer.parseInt(request.getParameter("selVal"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int selVal = 40;
		if( request.getParameter("selVal") != null) {
			selVal = Integer.parseInt(request.getParameter("selVal"));
		}
		
		try {
			HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
			memid = (String) memSession.getAttribute("auth");
			searchWord = request.getParameter("searchWord");
			
			SearchService service = SearchService.getInstance();
			rowCount = service.searchInsertService(searchWord, memid);
			count = service.searchResultCountService(searchWord);
			slist = service.searchPageList(currentPage, numberPerPage, searchWord);
			pdto = service.SearchPageBlockService(currentPage, numberPerPage, searchWord);
			srArr = service.searchRelationService(searchWord);
			slhm = service.searchBrandService(searchWord);
			clmap = service.searchCategoryService(searchWord);
			scCountMap = service.searchCateNameCountService(searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchHandler에서 오류");
		}
		request.setAttribute("scCountMap", scCountMap);
		request.setAttribute("clmap", clmap);
		request.setAttribute("slhm", slhm);
		request.setAttribute("srArr", srArr);
		request.setAttribute("selVal", selVal);
		request.setAttribute("count", count);
		request.setAttribute("pdto", pdto);
		request.setAttribute("searchWord", searchWord);
		request.setAttribute("slist", slist);
		return "/search/searchTest.jsp";
		
	}
	
	
	
}
