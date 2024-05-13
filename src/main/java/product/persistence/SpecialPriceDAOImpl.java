package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.util.JdbcUtil;

import product.domain.ProductDTO;
import product.domain.SpecialPriceDTO;

public class SpecialPriceDAOImpl implements SpecialPriceDAO{

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public SpecialPriceDAOImpl(Connection conn) {
		this.conn = conn;
	}

	
	public SpecialPriceDTO view(long productcode) throws SQLException {
		SpecialPriceDTO dto = null;
	    
		 int id;
	     String  spcImg ;
	     String  spclNm;
	     Date spclStrDt;
	     Date spclPrcEnDt ;
	     int spclDscnRt;
		   
		  	   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   
		   String sql = " SELECT s.ID, SPCLIMG, SPCLNM, SPCLSTRDT, SPCLPRCENDT, SPCLDSCNRT "
		   		+ " FROM SPECIALPRICE s JOIN product p ON s.id  = p.SPECIALPRICEID "
		   		+ " WHERE p.id = ? ";
		   try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, productcode);
			rs=  pstmt.executeQuery();
			
			if (rs.next()) {
				
					id = rs.getInt(1);
					spcImg = rs.getString(2);
					spclNm = rs.getString(3);
					spclStrDt = rs.getDate(4);
					spclPrcEnDt = rs.getDate(5);
					spclDscnRt = rs.getInt(6);
					
					dto = new SpecialPriceDTO()
							.builder()
							.id(id)
							.spcImg(spcImg)
							.spclNm(spclNm)
							.spclStrDt(spclStrDt)
							.spclPrcEnDt(spclPrcEnDt)
							.spclDscnRt(spclDscnRt)
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
				System.out.println("spc close error");
			}
	
		}
		   
			return dto;
	}
	
	
	
	

}
