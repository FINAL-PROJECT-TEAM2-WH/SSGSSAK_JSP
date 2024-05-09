package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import product.domain.ProductDTO;

public class ProductDAOImpl implements ProductDAO{

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public ProductDAOImpl(Connection conn) {
		this.conn = conn;
	}
	@Override
	public ProductDTO view(long  id) throws SQLException {
		ProductDTO dto = null;
		
	   
	   String categoryId ;
	   int specialPriceId; 
	   String shippingOptionId ;
	   String sellerStoreId; 
	   String brandId ;
	   String pdName ;
	   
	   String brandName;
	   String pcontent;
	   String updateDay ;
	   
	   
	  	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   
	   String sql = " SELECT p.ID, p.CATEGORYID, p.SPECIALPRICEID, p.SHIPPINGOPTIONID, p.SELLERSTOREID, p.BRANDID, p.PDNAME, p.PCONTENT, p.UPDATEDAY, b.BRANDNAME "
		   		+ " FROM PRODUCT p JOIN BRAND b ON p.BRANDID = b.ID "
		   		+ " WHERE p.id = ? ";
	   try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, id);
		rs=  pstmt.executeQuery();
		
		if (rs.next()) {
		
				id = rs.getLong(1);
				categoryId = rs.getString(2);
				specialPriceId = rs.getInt(3);
				shippingOptionId = rs.getString(4);
				sellerStoreId = rs.getString(5);
				brandId = rs.getString(6);
				pdName = rs.getString(7);
				pcontent = rs.getString(8);
				updateDay = rs.getString(9);
				brandName = rs.getString(10);
				
				dto = new ProductDTO()
						.builder()
						.id(id)
						.categoryId(categoryId)
						.specialPriceId(specialPriceId)
						.shippingOptionId(shippingOptionId)
						.sellerStoreId(sellerStoreId)
						.brandId(brandId)
						.pdName(pdName)
						.pcontent(pcontent)
						.updateDay(updateDay)
						.brandName(brandName)
						.build();
				
		
			
		}
		
	} catch (SQLException e) {

		e.printStackTrace();
	}finally {
		
		try {
			JdbcUtil.close(rs); 
			JdbcUtil.close(pstmt); 
			JdbcUtil.close(conn);
			
		} catch (Exception e2) {
			System.out.println("productDAO close error");
		}
	
		
	}
	   
		return dto;
	}
	
	
	
	

}
