package productList.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import productList.domain.AllCateDTO;
import productList.domain.MajorCateDTO;

public interface CategoryDAO {


		AllCateDTO selectCate(String categoryId) throws SQLException; 
		AllCateDTO selectCate_verProd(long pid) throws SQLException; 
		ArrayList<MajorCateDTO> selectMajorCate() throws SQLException;
		
		
}
