package product.persistence;

import java.sql.SQLException;
import java.util.List;

import product.domain.ProductOptionDTO;



public interface ProductOptionDAO {
	
	
	List<ProductOptionDTO> view(long id ) throws SQLException;
	
	
	
}
