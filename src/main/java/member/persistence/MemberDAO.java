package member.persistence;

import java.sql.SQLException;

import member.domain.MemberDTO;

public interface MemberDAO {
	// Member의 id passwd 갖고 오는 
	
	public MemberDTO login (String id, String passwd) throws SQLException ;
	
}
