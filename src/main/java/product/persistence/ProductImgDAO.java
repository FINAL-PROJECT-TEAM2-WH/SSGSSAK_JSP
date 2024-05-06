package product.persistence;

import java.sql.SQLException;
import java.util.List;

import product.domain.ProductImgDTO;

public interface ProductImgDAO {

	List<ProductImgDTO> getImg(String productId) throws SQLException;
}
