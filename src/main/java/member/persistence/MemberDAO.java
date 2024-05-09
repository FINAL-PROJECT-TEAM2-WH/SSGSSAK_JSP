package member.persistence;

import java.sql.SQLException;
import java.util.Map;

import member.domain.MemberDTO;

public interface MemberDAO {
	// Member의 id passwd 갖고 오는 
	
	public MemberDTO login (String id, String passwd) throws SQLException ;
	
	public int updateLoginYN(String id) throws SQLException;
	
	public int logOut(String id) throws SQLException ;
	
	
	// loadInfo 관련 함수
	public Map<String, String> loadInfo(String id) throws SQLException;
	
	public int getPersonalPoints(String id) throws SQLException;
	
	public int getPersonalCoupons(String id) throws SQLException;
	
	public int getSevenDaysLeftCou(String id) throws SQLException;
	
	public int availDownCoupon(String id) throws SQLException;

	
	// 정보 변경 관련 함수. 
	 
	public int changePwd(String id, String pwd) throws SQLException;
	
	public int changeinfo(String id, String phoneNum, String email) throws SQLException;
	
	public Map<String,String> originInfoLoad(String id) throws SQLException;
	
	public String getEmail(String id) throws SQLException;
	
	public String getPhoneNum(String id) throws SQLException;
	
	public String getName(String id) throws SQLException;
}
