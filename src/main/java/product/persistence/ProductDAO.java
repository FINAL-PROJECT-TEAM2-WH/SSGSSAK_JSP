package product.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.domain.ProductDTO;
import product.domain.ProductListVO;

public interface ProductDAO {
	
	ProductDTO view(long  id) throws SQLException;
	
	ArrayList<ProductListVO> productList(Connection conn, String searchWord, String memid) throws Exception;
	
}
