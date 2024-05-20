package productList.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import productList.domain.AllCateDTO;
import productList.domain.MajorCateDTO;
import productList.domain.ProductListDTO;
import productList.persistence.CategoryDAOimpl;
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
			System.out.println("getProdCount 뭔가안됨");
			e.printStackTrace();
		}
		
		return (Integer) null;
	}
	
	public int getTotalPages(String categoryId, int numberPerPage) {
		try (Connection conn = ConnectionProvider.getConnection()){
			productListDAOimpl dao = new productListDAOimpl(conn);
			int totalPages =  dao.getTotalPages(categoryId,numberPerPage);
			System.out.println("페이지수가져와짐");
			
			return totalPages;
			
		} catch (Exception e) {
			System.out.println("getTotalPages 뭔가안됨");
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
	
	public AllCateDTO selectCate_verProd(long id) {
		
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("selectCate_verProd");
			
			CategoryDAOimpl dao = new CategoryDAOimpl(conn); 
			AllCateDTO acDTO = dao.selectCate_verProd(id);
			System.out.println("selectCate_verProd 서비스 잘 작동됨");
			return acDTO;
		} catch ( NamingException | SQLException e) {
			e.printStackTrace();
			System.out.println("selectCate_verProd 서비스안됨ㅋㅋㅋ");
		}
		return null;
	}//selectCate
	public ArrayList<MajorCateDTO> selectMajorCate(){
		
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("selectMajorCate");
			
			CategoryDAOimpl dao = new CategoryDAOimpl(conn); 
			ArrayList<MajorCateDTO> list = dao.selectMajorCate();
			
			System.out.println("selectMajorCate 서비스 잘 작동됨");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("selectMajorCate 서비스 작동안됨ㅋㅋㅋ");
		}
		
		return null;
	}
	

}