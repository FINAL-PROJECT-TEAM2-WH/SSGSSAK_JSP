package product.service;

import java.sql.Connection;
import java.util.Iterator;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.util.ConnectionProvider;

import member.persistence.MemberDAO;
import product.domain.ProductDTO;
import product.domain.ProductImgDTO;
import product.persistence.ProductDAO;
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
			
			System.out.println(imgDAO.getImg(productcode).isEmpty());
			
			List<ProductImgDTO> images = imgDAO.getImg(productcode);
			
			Iterator<ProductImgDTO> ir = images.iterator();
			
			while ( ir.hasNext()) {
				
				ProductImgDTO dto =  (ProductImgDTO)ir.next();
				
				System.out.println(dto.toString());
			}
			
			product.setImages(images);
			
			return product;
			
		} catch (Exception e) {
			System.out.println("db조회중 오류");
		}
		
		return null;
		
		
	}
	
	
	

}
