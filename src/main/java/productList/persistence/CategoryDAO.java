package productList.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import productList.domain.CategoryDTO;

public interface CategoryDAO {
	public ArrayList<CategoryDTO> select(String id) throws SQLException;
	
	int getTotalProduct(String id) throws SQLException;
}
