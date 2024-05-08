package member.persistence;

import java.sql.SQLException;
import java.util.Map;

import member.domain.MemberDTO;

public interface MemberDAO {
	// Member의 id passwd 갖고 오는 
	
	public MemberDTO login (String id, String passwd) throws SQLException ;
	
	public int updateLoginYN(String id) throws SQLException;
	
	public int logOut(String id) throws SQLException ;
	
	public Map<String, String> loadInfo(String id) throws SQLException;
	
	public int getPersonalPoints(String id) throws SQLException;
	
	public int getPersonalCoupons(String id) throws SQLException;
	
	public int getSevenDaysLeftCou(String id) throws SQLException;
	
	public int availDownCoupon(String id) throws SQLException;

	public int changePwd(String id, String pwd) throws SQLException;
}
