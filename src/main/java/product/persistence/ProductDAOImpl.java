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
	public ProductDTO view(String  id) throws SQLException {
		ProductDTO dto = null;
		
	   
	   String categoryId ;
	   int specialPriceId; 
	   String shippingOptionId ;
	   String sellerStoreId; 
	   String brandId ;
	   String pdName ;
	   int price ;
	   int sale ;
	   String pcontent;
	   String updateDay ;
	   int stock;
	   
	  
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   
	   String sql = " SELECT id, categoryId,specialPriceId , shippingOptionId,sellerStoreId ,brandId,pdName,price ,sale,pcontent,updateDay,stock"
	   			+ " FROM product "
	   			+ " WHERE id = ? ";
	   try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs=  pstmt.executeQuery();
		
		if (rs.next()) {
			do {
				id = rs.getString(1);
				categoryId = rs.getString(2);
				specialPriceId = rs.getInt(3);
				shippingOptionId = rs.getString(4);
				sellerStoreId = rs.getString(5);
				brandId = rs.getString(6);
				pdName = rs.getString(7);
				price = rs.getInt(8);
				sale = rs.getInt(9);
				pcontent = rs.getString(10);
				updateDay = rs.getString(11);
				stock = rs.getInt(12);
				
				dto = new ProductDTO()
						.builder()
						.id(id)
						.categoryId(categoryId)
						.specialPriceId(specialPriceId)
						.shippingOptionId(shippingOptionId)
						.sellerStoreId(sellerStoreId)
						.brandId(brandId)
						.pdName(pdName)
						.price(price)
						.sale(sale)
						.pcontent(pcontent)
						.updateDay(updateDay)
						.stock(stock)
						.build();
				
			} while (rs.next());
			
		}
		
	} catch (SQLException e) {

		e.printStackTrace();
	}finally {
		
		 JdbcUtil.close(rs); 
		 JdbcUtil.close(pstmt); 
		 JdbcUtil.close(conn);
	
		
	}
	   
		return dto;
	}
	
	
	
	

}
