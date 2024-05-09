package product.persistence;

import java.sql.SQLException;
import java.util.List;

import product.domain.ProductOptionDTO;
import product.domain.SpecialPriceDTO;



public interface SpecialPriceDAO {
	
	
	SpecialPriceDTO view(long productcode) throws SQLException;
	
	
	
}
