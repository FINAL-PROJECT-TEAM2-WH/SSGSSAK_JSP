package productList.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import productList.domain.AllCateDTO;
import productList.domain.MajorCateDTO;

public interface CategoryDAO {


		AllCateDTO selectCate(String categoryId) throws SQLException; 

		
		
}
