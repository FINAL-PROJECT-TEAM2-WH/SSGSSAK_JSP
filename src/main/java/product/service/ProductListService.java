package product.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import product.domain.ProductListVO;
import product.persistence.ProductDAOImpl;

public class ProductListService {
	
	private static ProductListService instance = null;


	private ProductListService() {}


	public static ProductListService getInstance() {
		if (instance ==null) {
			instance = new ProductListService();
		}
		
		return instance;
	}
	
	
	public ArrayList<ProductListVO> pListService(String searchWord, String memid){
		
		ArrayList<ProductListVO> proList = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProductDAOImpl productDAOImpl = new ProductDAOImpl(conn);
			proList = productDAOImpl.productList(conn, searchWord, memid);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return proList;
	}
	
}
