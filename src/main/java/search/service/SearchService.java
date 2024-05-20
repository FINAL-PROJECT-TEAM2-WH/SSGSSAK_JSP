package search.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.PageDTO;
import search.domain.SearchDTO;
import search.domain.SearchVO;
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
	
	public int searchInsertService(String searchWord, String memid) {
		int rowCount = 0;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao = SearchDAOImpl.getInstance();
			rowCount = dao.insertSearch(conn, memid, searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("SearchInsertService 메서드에서 오류~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
	
	public ArrayList<SearchVO> searchPageList(int currentPage, int numberPerPage, String searchWord){
		ArrayList<SearchVO> slist = null;
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao = SearchDAOImpl.getInstance();
			slist = dao.searchResultList(conn, currentPage, numberPerPage, searchWord);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchPageList");
		} finally {
			JdbcUtil.close(conn);
		}
		return slist;
	}
	
	public PageDTO SearchPageBlockService(int currentPage, int numberPerPage, String searchWord) {
		PageDTO pdto = null;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao = SearchDAOImpl.getInstance();
			pdto = dao.pageBlock(conn, currentPage, numberPerPage, searchWord);
		} catch ( Exception e) {
			e.printStackTrace();
			System.out.println("SearchPageBlockService 에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}	
		return pdto;
	}
	
	public int searchResultCountService(String searchWord) {
		Connection conn = null;
		int count = 0;
		
		try {
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao =  SearchDAOImpl.getInstance();
			count = dao.searchResultCount(conn, searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchListCountService에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		return count;
	}
	
	public String[] searchRelationService(String searchWord) {
		String[] srArr = null;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao = SearchDAOImpl.getInstance();
			srArr = dao.searchRelation(conn, searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchRelationService메서드에서 오류");
		} finally {
			JdbcUtil.close(conn);
		}
		return srArr;
	}
	
	public LinkedHashMap<String, Long> searchBrandService(String searchWord){
		LinkedHashMap<String, Long> slhm = null;
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao = SearchDAOImpl.getInstance();
			slhm = dao.searchBrandMap(conn, searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchBrandService에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		return slhm;
	}
	
	public LinkedHashMap<String, ArrayList<String>> searchCategoryService(String searchWord){
		LinkedHashMap<String, ArrayList<String>> clmap = null;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao = SearchDAOImpl.getInstance();
			clmap = dao.searchCategory(conn, searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchCategoryService에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}

		return clmap;
		
	}
	
	public LinkedHashMap<String, SearchVO> searchCateNameCountService(String searchWord){
		LinkedHashMap<String, SearchVO> scCountMap = null;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			SearchDAOImpl dao = SearchDAOImpl.getInstance();
			scCountMap = dao.searchCateCount(conn, searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchCateNameCountService에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		return scCountMap;
	}
	
}
