package product.persistence;

import java.sql.SQLException;

import product.domain.ProductDTO;

public interface ProductDAO {
	
	ProductDTO view(String id) throws SQLException;
	
	
	
	
}
