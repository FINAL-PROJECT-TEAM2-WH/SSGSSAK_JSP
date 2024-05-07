package member.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

import com.util.JdbcUtil;

import member.domain.MemberDTO;

public class MemberDAOImpl implements MemberDAO{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private Map<String, String> info = new HashedMap();
	// 1. Setter를 통한 DI
	public void setConn(Connection conn) {
		this.conn = conn;
	}


	// 2. 생성자를 통한 DI
	public MemberDAOImpl(Connection conn) {
		this.conn = conn;
	}

	// 2 - 2 . Getter
	public Connection getConn() {
		return this.conn;
	}
	@Override
	public MemberDTO login(String id, String passwd) {
		ResultSet rs = null ;
		System.out.println("get in");
		// 로그인 성공 시 member에 관한 정보를 갖고 와서 세션에서 객체 단위로 왔다갔다 하게끔? 
		
		String sql =  "SELECT id, email, address, phoneNum, name "
				+ " FROM member "
				+ " WHERE REGEXP_LIKE(id, ?) AND REGEXP_LIKE(passwd,?)";
		
		String cid, email, address, phoneNum,name;
		MemberDTO dto = null;
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			
			rs = pstmt.executeQuery();
			
			if ( rs.next()) {
			// 로그인 성공 
				cid = rs.getString("id");
				email = rs.getString("email");
				address = rs.getString("address");
				phoneNum = rs.getString("phoneNum");
				name = rs.getString("name");
				
					dto = new MemberDTO()
						.builder()
						.id(cid)
						.email(email)
						.address(address)
						.phoneNum(phoneNum)
						.name(name)
						.build();	
			} else {
			// 로그인 실패 
				System.out.println("로그인실패");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);

		}
		
		
		return dto;
	}
	
	/*
	 * public Map<String, String> loadInfo(String id) { ResultSet rs = null ;
	 * System.out.println("> userinfo get in"); // 로그인 성공 시 member에 관한 정보를 갖고 와서
	 * 세션에서 객체 단위로 왔다갔다 하게끔?
	 * 
	 * String sql = "SELECT id, email, address, phoneNum, name " + " FROM member " +
	 * " WHERE REGEXP_LIKE(id, ?) AND REGEXP_LIKE(passwd,?)";
	 * 
	 * String cid, email, address, phoneNum,name; MemberDTO dto = null; try { pstmt
	 * =conn.prepareStatement(sql); pstmt.setString(1, id); pstmt.setString(2,
	 * passwd);
	 * 
	 * rs = pstmt.executeQuery();
	 * 
	 * if ( rs.next()) { // 로그인 성공 cid = rs.getString("id"); email =
	 * rs.getString("email"); address = rs.getString("address"); phoneNum =
	 * rs.getString("phoneNum"); name = rs.getString("name");
	 * 
	 * dto = new MemberDTO() .builder() .id(cid) .email(email) .address(address)
	 * .phoneNum(phoneNum) .name(name) .build(); } else { // 로그인 실패
	 * System.out.println("로그인실패"); } } catch (SQLException e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } finally {
	 * JdbcUtil.close(rs); JdbcUtil.close(pstmt);
	 * 
	 * }
	 * 
	 * 
	 * return }
	 */

}
