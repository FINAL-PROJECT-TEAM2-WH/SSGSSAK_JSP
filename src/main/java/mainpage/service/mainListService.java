package mainpage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import productList.domain.AllCateDTO;
import productList.domain.ProductListDTO;
import productList.persistence.CategoryDAOimpl;
import productList.persistence.productListDAOimpl;

public class mainListService {

	private static mainListService instance = null;
	
	private mainListService() {	}
	
	public static mainListService getInstance() {
		if (instance == null) {
			instance = new mainListService();
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
			System.out.println("getProdCount 뭔가안됨");
			e.printStackTrace();
		}
		
		return (Integer) null;
	}
	
	
	public AllCateDTO selectCate(String categoryId) {
		
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("selectCate");
			
			CategoryDAOimpl dao = new CategoryDAOimpl(conn); 
			AllCateDTO acDTO = dao.selectCate(categoryId);
			System.out.println("selectCate 서비스 잘 작동됨");
			return acDTO;
		} catch ( NamingException | SQLException e) {
			e.printStackTrace();
			System.out.println("selectCate 서비스안됨ㅋㅋㅋ");
		}
		return null;
	}//selectCate
	
	

}