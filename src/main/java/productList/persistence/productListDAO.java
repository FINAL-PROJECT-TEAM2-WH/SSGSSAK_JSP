package productList.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import productList.domain.ProductListDTO;

public interface productListDAO {

	ArrayList<ProductListDTO> select(String categoryId, int currentPage, int numberPerPage) throws SQLException; 
	
	// 총 페이지 수 
	int getTotalPages(String categoryId, int numberPerPage) throws SQLException;
	//셀렉된 상품 수 출력
	int getProdCount(String categoryId) throws SQLException;






	
	

}
