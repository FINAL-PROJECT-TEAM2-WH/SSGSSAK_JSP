package product.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import product.domain.ProductDTO;
import product.domain.ProductImgDTO;
import product.persistence.ProductDAOImpl;
import product.persistence.ProductImgDAOimpl;

public class ViewService {
	
	private static ViewService instance = null;


	
	public ViewService() {	}



	public static ViewService getInstance() {
		if (instance ==null) {
			instance = new ViewService();
		}
		
		return instance;
	}

	
	
	public ProductDTO getProduct(String productcode) {
		
		try (Connection conn = ConnectionProvider.getConnection()){
			ProductDAOImpl dao = new ProductDAOImpl(conn);
			ProductDTO product =  dao.view(productcode);
			
			ProductImgDAOimpl imgDAO =  new ProductImgDAOimpl(conn);
			List<ProductImgDTO> images = imgDAO.getImg(productcode);
			product.setImages(images);
			
			return product;
			
		} catch (Exception e) {
			System.out.println("db조회중 오류");
		}
		
		return null;
		
		
	}
	
	
	

}
