package productList.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import product.domain.ProductDTO;

public interface CategoryDAO {
	// 1 - 2  게시글 목록 조회 + 페이징 처리 O
		ArrayList<ProductDTO> select (int currentPage, int numberPerPage) throws SQLException ; 
		
		
		
		
		
		// 총 페이지 수 
		int getTotalPages(int numberPerPage) throws SQLException;
		
		
		// 총 레코드 수
		int getTotalRecords() throws SQLException;
		
		
}
