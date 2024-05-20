package shipping.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import shipping.domain.ShippingOptionDTO;

public class ShippingOptionDAOImpl implements ShippingOptionDAO{
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	
	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public ShippingOptionDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public ShippingOptionDTO view(long productcode) throws SQLException {

	
		
		String sql = " SELECT  s.ID, s.SHIPPINGCOMPANYNAME, s.SHIPPINGOPTIONNAME, s.SHIPPINGOPTIONEXPLAIN, s.DEFAULTSHIPPINGFEE, s.REGIONNAME, s.SHPPINGCHECK "
				+ "  FROM  product p join shippingoption s ON p.shippingoptionid = s.id "
				+ " WHERE p.id =? ";
				
		ShippingOptionDTO dto = null;
		
		 long id;
		 String shippingCompanyName;
		 String shippingOptionName;
		 String shippingOptionExplain;
		 String defaultShippingFee;
		 String regionName;
		 String ShppingCheck;
		 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, productcode);
			rs=pstmt.executeQuery();
			
			if (rs.next()) {
				id=rs.getLong(1);
				shippingCompanyName= rs.getString(2);
				shippingOptionName= rs.getString(3);
				shippingOptionExplain= rs.getString(4);
				defaultShippingFee= rs.getString(5);
				regionName= rs.getString(6);
				ShppingCheck= rs.getString(7);
				
				dto = new ShippingOptionDTO().builder()
						.id(id)
						.shippingCompanyName(shippingCompanyName)
						.shippingOptionName(shippingOptionName)
						.shippingOptionExplain(shippingOptionExplain)
						.defaultShippingFee(defaultShippingFee)
						.regionName(regionName)
						.ShppingCheck(ShppingCheck)
						.build();
				
				return dto;
				
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
		}
		
		
		return null;
	}
	
	


	
	
	
	

}
