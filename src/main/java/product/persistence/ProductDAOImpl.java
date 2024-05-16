package product.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import product.domain.ProductDTO;
import product.domain.ProductListVO;
import search.persistence.SearchDAOImpl;
import search.service.SearchService;
import shipping.service.ShippingPlaceInfoService;

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
	   Date updateDay ;
	   
	   
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
				updateDay = rs.getDate(9);
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
	@Override
	public ArrayList<ProductListVO> productList(Connection conn, String searchWord, String memid) throws Exception {
		
		String productid;
		String brandname; 
	    String imgurl;
	    String shippingoptionname;
	    int optionprice;
	    String sellername;
	    String pdname;
	    
		ArrayList<ProductListVO> prodList = null;
		ProductListVO pdvo = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " SELECT c6.brandname, c6.productid, c6.imgurl, c6.shippingoptionname, c6.optionprice, c6.sellername, c6.pdname, ctg.subCateName "
				+ " FROM category ctg JOIN ( "
				+ " SELECT b.brandname, c5.id AS productid, c5.imgurl, c5.shippingoptionname, c5.optionprice, c5.sellername, c5.pdname, c5.categoryid "
				+ " FROM brand b JOIN ( "
				+ " SELECT DISTINCT c4.id, c4.imgurl, sio.shippingcompanyname, sio.shippingoptionname, c4.optionprice, c4.sellername, c4.pdname,  c4.brandid, c4.categoryid "
				+ " FROM shippingoption sio JOIN ( "
				+ " SELECT po.optionprice , c3.* "
				+ " FROM productOption po JOIN ( "
				+ " SELECT s.sellername, c2.*  "
				+ " FROM sellerstore s JOIN ( "
				+ " SELECT DISTINCT p.productId, p.imgurl , c.* "
				+ " FROM productimg p JOIN ( "
				+ " SELECT p.id, p.shippingoptionid, sellerstoreid, brandid, pdname,  c.minicatename, categoryid "
				+ " FROM product p JOIN category c ON p.categoryid = c.id ) c ON p.productId = c.id "
				+ " ) c2 ON s.id = c2.sellerstoreid) c3 ON c3.id = po.productid "
				+ " WHERE po.optionprice IS NOT NULL ) c4 ON sio.id = c4.shippingoptionid ) c5 ON b.id = c5.brandid)c6 ON ctg.id = c6.categoryid "
				+ " WHERE c6.pdname LIKE '% ? %' ";
				
		System.out.println(sql);
		
		
		try {
			// 검색어 테이블 insert 작업
			SearchDAOImpl searchDAOImpl = SearchDAOImpl.getInstance();
			searchDAOImpl.insertSearch(conn, sql, searchWord);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchWord);
			
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				prodList = new ArrayList<ProductListVO>();
				
				do {
					productid = rs.getString("productid");
					brandname = rs.getString("brandname"); 
				    imgurl = rs.getString("imgurl");
				    shippingoptionname = rs.getString("shippingoptionname");
				    optionprice = rs.getInt("optionprice");
				    sellername = rs.getString("sellername");
				    pdname = rs.getString("pdname");
				    
				    pdvo = new ProductListVO().builder()
				    		.productid(productid)
				    		.brandname(brandname)
				    		.imgurl(imgurl)
				    		.shippingoptionname(shippingoptionname)
				    		.optionprice(optionprice)
				    		.sellername(sellername)
				    		.pdname(pdname)
				    		.build();
				    
				    prodList.add(pdvo);
				    
				} while (rs.next());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("productList메서드에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return null;
	}
	
	
	
	

}
