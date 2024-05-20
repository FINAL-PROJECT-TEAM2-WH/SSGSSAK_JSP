package search.persistence;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import member.domain.PageDTO;
import search.domain.SearchDTO;
import search.domain.SearchVO;

public interface SearchDAO {
	
	
	int insertSearch(Connection conn, String memid, String searchWord) throws Exception;
	
	ArrayList<SearchDTO> searchList(Connection conn) throws Exception;
	
	ArrayList<SearchVO> searchResultList(Connection conn, int currentPage, int numberPerPage, String searchWord) throws Exception;
	
	public PageDTO pageBlock(Connection conn, int currentPage, int numberPerPage, String searchWord) throws Exception;
	
	public int getTotalPages(Connection conn, int numberPerPage, String searchWord) throws Exception;
	
	public int searchResultCount(Connection conn, String searchWord) throws Exception;
	
	public String[] searchRelation(Connection conn, String searchWord) throws Exception;
	
	public LinkedHashMap<String, Long> searchBrandMap(Connection conn, String searchWord) throws Exception;
	
	public LinkedHashMap<String, ArrayList<String>> searchCategory(Connection conn, String searchWord) throws Exception;
	
	public LinkedHashMap<String, SearchVO> searchCateCount(Connection conn, String searchWord) throws Exception;
}
