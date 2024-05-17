package mainpage.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import mainpage.domain.ProductmainDTO;
import productList.domain.ProductListDTO;
import productList.persistence.productListDAO;

public class mainListDAOImpl implements productListDAO{

	
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public mainListDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public ArrayList<ProductListDTO> select(String categoryId, int currentPage, int numberPerPage) throws SQLException {
		System.out.println("실행은됨?");
		String 		categoryId;
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
	   

		String sql = "SELECT * "
				+ "FROM ( "
				+ "        SELECT ROWNUM no, t.* "
				+ "        FROM ( "
				+ "                SELECT p.ID, p.SHIPPINGOPTIONID, p.sellerstoreid, s.SELLERNAME, p.brandid, b.brandname, p.PDNAME, p.UPDATEDAY, COALESCE(o.optionPrice, 0) AS optionPrice, COALESCE((o.optionPrice-((o.optionPrice/100)*c.spclDscnRt)), 0) AS sprice, COALESCE(c.spclDscnRt, 0) AS discount ,p.CATEGORYID "
				+ "                FROM PRODUCT p JOIN BRAND b ON p.BRANDID = b.ID "
				+ "				   JOIN sellerstore s ON p.SELLERSTOREID = s.id "
				+ "				   LEFT JOIN productOption o ON p.ID = o.productid "
				+ "				   LEFT JOIN specialprice c ON p.specialPriceId = c.id "
				+ "                WHERE p.CATEGORYID = 01030601 "
				+ "             ) t "
				+ "     ) b "
				+ "WHERE no BETWEEN ? AND ? ";
		System.out.println(sql);
		ArrayList<ProductmainDTO> list = null;
		try {
			int start = (currentPage-1)*numberPerPage +1;
			int end = start + numberPerPage-1;

			pstmt = conn.prepareStatement(sql); 
			
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<ProductmainDTO>();
				ProductmainDTO dto = null;
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
					categoryId = rs.getString(1);
					
					
					
					dto = new ProductmainDTO()
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
							.categoryId(categoryId)
							
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
		int ProdCount = 0;
		String sql = "SELECT COUNT(*) FROM product WHERE categoryid = ?";
		this.pstmt = this.conn.prepareStatement(sql);
		pstmt.setString(1,  categoryId );
		this.rs =  this.pstmt.executeQuery();
		if( this.rs.next() ) ProdCount = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		return ProdCount;
	}

	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
