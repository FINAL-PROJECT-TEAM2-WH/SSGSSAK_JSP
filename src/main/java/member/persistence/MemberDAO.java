package member.persistence;

public interface MemberDAO {
	// Member의 id passwd 갖고 오는 
	
	public int idCheck (String id, String passwd) ;
	
}
