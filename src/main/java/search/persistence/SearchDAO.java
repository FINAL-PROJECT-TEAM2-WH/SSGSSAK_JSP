package search.persistence;

import java.sql.Connection;
import java.util.ArrayList;

import search.domain.SearchDTO;

public interface SearchDAO {
	
	
	int insertSearch(Connection conn, String memid, String searchWord) throws Exception;
	
	ArrayList<SearchDTO> searchList(Connection conn) throws Exception;
	
}
