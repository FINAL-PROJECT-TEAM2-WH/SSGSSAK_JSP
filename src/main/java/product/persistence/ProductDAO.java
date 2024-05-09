package product.persistence;

import java.sql.SQLException;
import java.util.List;

import product.domain.ProductDTO;

public interface ProductDAO {
	
	ProductDTO view(long  id) throws SQLException;
	

	
	
	
}
