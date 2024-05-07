package product.persistence;

<<<<<<< HEAD
public interface ProductDAO {
	
	
=======
import java.sql.SQLException;

import product.domain.ProductDTO;

public interface ProductDAO {
	
	ProductDTO view(String  id) throws SQLException;
>>>>>>> 4f46cbc8cd4ba9662ad10613b3d13c74febec12f
	
	
	
	
}
