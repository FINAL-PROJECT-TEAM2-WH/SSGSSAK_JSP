package productList.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import productList.domain.ProductListDTO;
import productList.persistence.productListDAOimpl;

public class ProductListService {

	private static ProductListService instance = null;
	
	private ProductListService() {	}
	
	public static ProductListService getInstance() {
		if (instance == null) {
			instance = new ProductListService();
		}
		return instance;
	}
	
	public ArrayList<ProductListDTO> getProductList(String categoryId, int currentPage, int numberPerPage) {
		
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("getProductList");
			
			productListDAOimpl dao = new productListDAOimpl(conn); 
			ArrayList<ProductListDTO> productList = dao.select(categoryId, currentPage, numberPerPage);
			System.out.println("리스트셀렉은됨");
			return productList;
		} catch ( NamingException | SQLException e) {
			e.printStackTrace();
		}
		return null;
	}//getPL
	
	public int getProdCount(String categoryId) {
		try (Connection conn = ConnectionProvider.getConnection()){
			productListDAOimpl dao = new productListDAOimpl(conn);
			int ProdCount =  dao.getProdCount(categoryId);
			System.out.println("상품수가져와짐");
			
			return ProdCount;
			
		} catch (Exception e) {
			System.out.println("뭔가안됨");
			e.printStackTrace();
		}
		
		return (Integer) null;
	}
	
	
	

}