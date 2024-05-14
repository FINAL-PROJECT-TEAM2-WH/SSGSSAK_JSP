package search.command;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import search.domain.SearchDTO;
import search.service.SearchService;

public class SearchCountHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		ArrayList<SearchDTO> searchList = null;
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		try {
			SearchService service = SearchService.getInstance();
			searchList = service.searchListService();
			
			Iterator<SearchDTO> ir = searchList.iterator();
			while (ir.hasNext()) {
				SearchDTO searchDTO = (SearchDTO) ir.next();
				
				jsonObject.put("id", searchDTO.getId());
				jsonObject.put("searchWord", searchDTO.getSearchword());
				jsonObject.put("currentRank", searchDTO.getCurrentRank());
				jsonObject.put("rankChange", searchDTO.getRankChange());
				
				jsonArray.add(jsonObject);
				
			}
			response.getWriter().write(jsonArray.toString());
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchCountHandler에서 오류~~");
		}
		return null;
	}
}
