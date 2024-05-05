package pay.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class CouponImpl implements CouponDAO{
	private Connection conn = null ;
	private PreparedStatement pst = null ;
	private ResultSet rs = null ;
	
	public CouponImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	@Override
	public int issue(String id, int couponnum) {
		String sql = " insert into couponrecord values (couponrecord_seq.nextval , ? , ? , sysdate ) " ;
		int a = 0 ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, couponnum);
			a = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return a;
	}

	@Override
	public int isduplicoupon(String id, int couponnum) {
		String sql = " select count(*) result from couponrecord where memid= ? and cnumber= ? ";
		int result = 0 ; 
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, couponnum);
			rs = pst.executeQuery();
			if (rs.next()) {
				result = rs.getInt("result");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return result;
	}

	

}
