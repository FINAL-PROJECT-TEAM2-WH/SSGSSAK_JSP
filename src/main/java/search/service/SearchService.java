package search.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import search.domain.SearchDTO;
import search.persistence.SearchDAOImpl;

public class SearchService {
	
	private static SearchService instance = null;
	
	private SearchService() {}
	
	public static SearchService getInstance() {
		
		if(instance == null) {
			instance = new SearchService();
		}
		return instance;
	}
	
	public ArrayList<SearchDTO> searchListService(){
		ArrayList<SearchDTO> sDtoList = null;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl daoImpl = SearchDAOImpl.getInstance();
			sDtoList = daoImpl.searchList(conn);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("search 서비스에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		return sDtoList;
		
	}
}
