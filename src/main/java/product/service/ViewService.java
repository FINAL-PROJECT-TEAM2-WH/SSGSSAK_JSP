package product.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import product.domain.ProductDTO;
import product.domain.ProductOptionDTO;
import product.domain.SpecialPriceDTO;
import product.persistence.ProductDAOImpl;
import product.persistence.ProductOptionDAOImpl;
import product.persistence.SpecialPriceDAOImpl;
import review.domain.ReviewDTO;
import review.persistence.ReviewDAOImpl;
import shipping.domain.ShippingOptionDTO;
import shipping.persistence.ShippingOptionDAOImpl;

public class ViewService {
	

	
	private static ViewService instance = null;


	
	public ViewService() {	}
	
	public static ViewService getInstance() {
		if (instance ==null) {
			instance = new ViewService();
		}
		
		return instance;
	}

	public ProductDTO getProduct(long productcode) {
		
		try (Connection conn = ConnectionProvider.getConnection()){
			System.out.println("viewService");
			ProductDAOImpl dao = new ProductDAOImpl(conn);
			ProductDTO product =  dao.view(productcode);
			
			
			/*
			 * 이미지 처리작업
			 * ProductImgDAOimpl imgDAO = new ProductImgDAOimpl(conn);
			 * 
			 * System.out.println(imgDAO.getImg(productcode).isEmpty());
			 * 
			 * List<ProductImgDTO> images = imgDAO.getImg(productcode);
			 * 
			 * Iterator<ProductImgDTO> ir = images.iterator();
			 * 
			 * while ( ir.hasNext()) {
			 * 
			 * ProductImgDTO dto = (ProductImgDTO)ir.next();
			 * 
			 * System.out.println(dto.toString()); }
			 * 
			 * product.setImages(images);
			 */
			
			return product;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("db조회중 오류");
		}
		
		return null;
		
		
	}
	
	
	public List<ProductOptionDTO> getProductOption(long productcode) {
		System.out.println("pdOption get init");
		Connection conn  = null;
		List<ProductOptionDTO> productOption =null;
		try {
			conn = ConnectionProvider.getConnection();
			ProductOptionDAOImpl dao = new ProductOptionDAOImpl(conn);
			productOption = dao.view(productcode);
			
		
		} catch (NamingException | SQLException e) {
			
			System.out.println("옵션불러오기실패");
			e.printStackTrace();
		}finally {
			
			JdbcUtil.close(conn);
		}
		
		return productOption;
		
		
		
	}
	
	public SpecialPriceDTO getSpecialPrice(long productcode) {
		System.out.println("specialPrice in!");
		Connection conn  =null;
		SpecialPriceDTO specialPrice = null;
		try {
			conn = ConnectionProvider.getConnection();
			SpecialPriceDAOImpl dao = new SpecialPriceDAOImpl(conn);
			specialPrice = dao.view(productcode);
			
			
		} catch (NamingException | SQLException e) {
			
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		
		
		
		return specialPrice;
		
		
	}
	
	public ShippingOptionDTO getShippingOption(long productcode) {
		
		ShippingOptionDTO shippingOption = null;
		
		try (Connection conn = ConnectionProvider.getConnection()){
			
			ShippingOptionDAOImpl  dao = new ShippingOptionDAOImpl(conn);
			shippingOption = dao.view(productcode);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return shippingOption;
		
		
	}
	
	public List<ReviewDTO> getReviews(long productcode){
		
		Connection conn = null;
		
		List<ReviewDTO>  reviews = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl dao = new ReviewDAOImpl(conn);
			
			reviews =  dao.select(productcode);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn);
		}
		return reviews;
		
		
	}

}
