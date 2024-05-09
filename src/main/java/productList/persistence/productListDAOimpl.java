package productList.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import product.domain.ProductDTO;

public class productListDAOimpl implements productListDAO{

	@Override
	public ArrayList<ProductDTO> select() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductDTO> select(int currentPage, int numberPerPage) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalRecords() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
