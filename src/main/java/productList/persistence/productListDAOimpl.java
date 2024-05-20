package productList.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import productList.domain.ProductListDTO;

public class productListDAOimpl implements productListDAO{

	
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public productListDAOimpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public ArrayList<ProductListDTO> select(String categoryId, int currentPage, int numberPerPage) throws SQLException {
		System.out.println("실행은됨?");
		int 		no;
		long		id;              
		long 		shippingOptionId;
		String 		sellerstoreid; 
		String 		sellerName;    
		String 		brandId;       
		String 		brandName;     
		String 		pDname;        
		String 		upDateDay;     
		long 		optionPrice;     
		long 		sprice;          
		long 		discount;          
		long 		reviewCount;
		double 		avgGrade; 
		
		
		String sql = " SELECT * "
				   + " FROM ( "
			   	   + "    SELECT ROWNUM no, t.* "
				   + "    FROM ("
				   + "        SELECT "
				   + "            p.ID, MAX(p.SHIPPINGOPTIONID) AS SHIPPINGOPTIONID, "
				   + "            MAX(p.sellerstoreid) AS SELLERSTOREID, MAX(s.SELLERNAME) AS SELLERNAME, "
				   + "            MAX(p.brandid) AS BRANDID, MAX(b.brandname) AS BRANDNAME, "
				   + "            MAX(p.PDNAME) AS PDNAME, MAX(p.UPDATEDAY) AS UPDATEDAY, "
				   + "            COALESCE(MAX(o.optionPrice), 0) AS optionPrice, COALESCE(MAX(o.optionPrice) - ((MAX(o.optionPrice) / 100) * MAX(c.spclDscnRt)), 0) AS sprice, "
				   + "            COALESCE(MAX(c.spclDscnRt), 0) AS discount, COALESCE(MAX(reviewData.reviewCount), 0) AS reviewCount, "
				   + "            COALESCE(MAX(reviewData.averageGrade), 0) AS averageGrade "
				   + "        FROM "
				   + "            PRODUCT p JOIN BRAND b ON p.BRANDID = b.ID "
				   + "                      JOIN sellerstore s ON p.SELLERSTOREID = s.id  "
				   + "                 LEFT JOIN productOption o ON p.ID = o.productid  "
				   + "                 LEFT JOIN specialprice c ON p.specialPriceId = c.id  "
				   + "                 LEFT JOIN ( SELECT productId, COUNT(*) AS reviewCount, AVG(grade) AS averageGrade  "
				   + "                            FROM review GROUP BY productId "
				   + "                           ) reviewData ON p.ID = reviewData.productId "
				   + "       		WHERE TO_CHAR(p.CATEGORYID) LIKE ? || '%' GROUP BY p.id "
				   + "    ) t "
				   + " ) b "
				   + " WHERE no BETWEEN ? AND ? ";
		
		
		System.out.println(sql);
		ArrayList<ProductListDTO> list = null;
		try {
			int start = (currentPage-1)*numberPerPage +1;
			int end = start + numberPerPage-1;

			pstmt = conn.prepareStatement(sql); 
	        if (categoryId.endsWith("000000")) {
	        	categoryId = categoryId.substring(0, categoryId.length() - 6);
	        } else if (categoryId.endsWith("0000")) {
	        	categoryId = categoryId.substring(0, categoryId.length() - 4);
	        } else if (categoryId.endsWith("00")) {
	        	categoryId = categoryId.substring(0, categoryId.length() - 2);
	        } 

	        
			pstmt.setString(1, categoryId);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<ProductListDTO>();
				ProductListDTO dto = null;
				do {
					no=rs.getInt(1);
					id= rs.getLong(2);              
					shippingOptionId = rs.getLong(3); 
					sellerstoreid = rs.getString(4);    
					sellerName = rs.getString(5);       
					brandId = rs.getString(6);
					brandName = rs.getString(7);
					pDname = rs.getString(8);
					upDateDay = rs.getString(9);
					optionPrice = (rs.getLong(10)==0?0:rs.getLong(10));
					sprice = (rs.getLong(11)==0?0:rs.getLong(11));
					discount = (rs.getLong(12)==0?0:rs.getLong(12));
					reviewCount = (rs.getLong(13)==0?0:rs.getLong(13));
					avgGrade = (rs.getDouble(14)==0?0:rs.getDouble(14));
					
					dto = new ProductListDTO()
							.builder()
							.id(id)
							.shippingOptionId(shippingOptionId)
							.sellerstoreid(sellerstoreid)
							.sellerName(sellerName)
							.brandId(brandId)
							.brandName(brandName)
							.pDname(pDname)
							.upDateDay(upDateDay)
							.optionPrice(optionPrice)
							.sprice(sprice)
							.discount(discount)
							.reviewCount(reviewCount)
							.avgGrade(avgGrade)
							.build();
					list.add(dto);
					System.out.println("dto에 담아짐");
				} while (rs.next());

			} // if 

		} catch (SQLException e) { 
			e.printStackTrace();
			System.out.println("여기서 오류뜨면 dto에 담기는게 안되는거임");
		} finally {
			try {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(conn);
			} catch (Exception e2) {
				System.out.println("닫기실패");
			}
		}

		return list;
	}

	@Override
	public int getProdCount(String categoryId) throws SQLException {
        if (categoryId.endsWith("000000")) {
        	categoryId = categoryId.substring(0, categoryId.length() - 6);
        } else if (categoryId.endsWith("0000")) {
        	categoryId = categoryId.substring(0, categoryId.length() - 4);
        } else if (categoryId.endsWith("00")) {
        	categoryId = categoryId.substring(0, categoryId.length() - 2);
        } 
		int ProdCount = 0;
		String sql = "SELECT COUNT(*) FROM product WHERE TO_CHAR(CATEGORYID) LIKE ? || '%' ";
		this.pstmt = this.conn.prepareStatement(sql);
		pstmt.setString(1,  categoryId );
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) ProdCount = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return ProdCount;
	}

	@Override
	public int getTotalPages(String categoryId, int numberPerPage) throws SQLException {
        if (categoryId.endsWith("000000")) {
        	categoryId = categoryId.substring(0, categoryId.length() - 6);
        } else if (categoryId.endsWith("0000")) {
        	categoryId = categoryId.substring(0, categoryId.length() - 4);
        } else if (categoryId.endsWith("00")) {
        	categoryId = categoryId.substring(0, categoryId.length() - 2);
        } 
		int totalPages = 0;		
		String sql = "SELECT CEIL(COUNT(*)/?) FROM product WHERE TO_CHAR(CATEGORYID) LIKE ? || '%' ";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		this.pstmt.setString(2, categoryId);
		this.rs =  this.pstmt.executeQuery();		
		if( this.rs.next() ) totalPages = rs.getInt(1);		
		this.rs.close();
		this.pstmt.close();				
		return totalPages;
	}

}
