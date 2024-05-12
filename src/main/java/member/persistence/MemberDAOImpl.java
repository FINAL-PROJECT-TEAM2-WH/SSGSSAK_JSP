package member.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import oracle.net.ano.DataIntegrityService;

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
				+ " WHERE id = ? AND passwd = ? "; 

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


	@Override
	public int updateLoginYN(String id) {
		// update 하면서 insert 해줘야댐 

		String sql = "SELECT name, PRIVILEGE "
				+ " FROM member "
				+ " WHERE id = ? ";
		String name = "", privilege = "";
		int rowCount = 0;
		System.out.println(" > updateLoginYN ");
		try { 
			pstmt=conn.prepareStatement(sql); 
			pstmt.setString(1, id); 
			rs = pstmt.executeQuery();

			if ( rs.next()) { // 로그인 성공 cid = rs.getString("id"); email =
				privilege = rs.getString("PRIVILEGE"); 
				name = rs.getString("name");
			} 		
		} 
		catch (SQLException e) { 
			// TODO Auto-generated 

			e.printStackTrace();
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}

		try {			


			sql = sql.format("INSERT INTO auth (id,name,privilege) VALUES ('%s','%s','%s')", id,name,privilege);
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);	
			rowCount = pstmt.executeUpdate(sql);
			System.out.println(rowCount);
		} catch (SQLIntegrityConstraintViolationException e) {
			e.printStackTrace();
			logOut(id);
			rowCount = updateLoginYN(id);
		} catch (SQLException e) {
			// TODO: handle exception
		}
		finally {
			JdbcUtil.commit(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}


		return rowCount;
	}

	// 로그아웃
	@Override
	public int logOut(String id) {
		String sql = String.format("DELETE FROM Auth WHERE id = '%s'", id);
		int rowCount = 0;
		try {
			pstmt=conn.prepareStatement(sql);
			rowCount = pstmt.executeUpdate(sql);
			if ( rowCount == 1) {
				System.out.println("로그아웃 성공");
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 

		return rowCount;
	}





	// info에 필요한 값 불러오기 
	@Override
	public Map<String, String> loadInfo(String id) { 
		System.out.println("> userinfo get in"); 
		// 로그인 성공 시 member에 관한 정보를 갖고 와서
		//세션에서 객체 단위로 왔다갔다 하게끔?

		String sql = "SELECT name " 
				+ " FROM member " 
				+ " WHERE id = ?";

		String name = ""; 

		try {
			pstmt=conn.prepareStatement(sql); 
			pstmt.setString(1, id); 
			rs = pstmt.executeQuery();

			if ( rs.next()) { // 로그인 성공 
				name = rs.getString("name");
				System.out.println("name : " + name);
			} else { // 로그인 실패
				System.out.println("로그인실패"); 
			} 
		} catch (SQLException e) { 
			// TODO Auto-generated

			e.printStackTrace(); 
		}finally {
			JdbcUtil.close(rs); 
			JdbcUtil.close(pstmt);
		}

		int points = 0 ;
		try {
			points = getPersonalPoints(id);
			System.out.println("points : " + points);
		} catch (SQLException e) { 
			// TODO Auto-generated
			e.printStackTrace(); 
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}


		int couponNum = 0 ;
		try {
			couponNum = getPersonalCoupons(id);
			System.out.println("couponNum : " + couponNum);
		} catch (SQLException e) { 
			// TODO Auto-generated
			e.printStackTrace(); 
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		int leftDays = 0 ;
		try {
			leftDays = getSevenDaysLeftCou(id);
			System.out.println("leftDays : " + leftDays);
		} catch (SQLException e) { 
			// TODO Auto-generated
			e.printStackTrace(); 
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		int availDownCoupon = 0 ;
		try {
			availDownCoupon = availDownCoupon(id);
			System.out.println("availDownCoupon : " + availDownCoupon);
		} catch (SQLException e) { 
			// TODO Auto-generated
			e.printStackTrace(); 
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}


		info.put("name", name);
		info.put("points", String.valueOf(points));
		info.put("couponNum", String.valueOf(couponNum));
		if ( leftDays <= 7 ) {
			info.put("leftDays", String.valueOf(leftDays));
		} else {
			info.put("leftDays", "0");
		}
		info.put("availDC", String.valueOf(availDownCoupon));

		return info;

	}	


	// point 값 갖고오기 
	@Override
	public int getPersonalPoints(String id) throws SQLException{

		String sql = "SELECT sum(pr.points) memberPoint "
				+ " FROM pointrecord pr LEFT JOIN points p ON pr.cardnumber = p.id"
				+ " WHERE pr.memid = ? ";

		int point = 0;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if ( rs.next()) {
			point = rs.getInt("memberPoint");
		} else {
			System.out.println("포인트값 불러오기 실패");
		}			
		return point ; 
	}


	@Override
	public int getPersonalCoupons(String id) throws SQLException {
		String sql = "SELECT COUNT(cnumber) couponNum "
				+ " FROM couponrecord "
				+ " WHERE memid = ? " ;

		int couponNum = 0;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if ( rs.next()) {
			couponNum = rs.getInt("couponNum");
		} else {
			System.out.println("쿠폰개수 불러오기 실패");
		}			
		return couponNum ; 
	}


	@Override
	public int getSevenDaysLeftCou(String id) throws SQLException {
		String sql = " SELECT trunc(c.endd) - trunc(SYSDATE) leftDays "
				+ " FROM couponrecord cr LEFT JOIN coupon c ON cr.cnumber = c.id "
				+ " WHERE cr.memid = ? " ;

		int leftDays = 0;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if ( rs.next()) {
			leftDays = rs.getInt("leftDays");
		} else {
			System.out.println("쿠폰개수 불러오기 실패");
		}			
		return leftDays ; 
	}


	@Override
	public int availDownCoupon(String id) throws SQLException {
		String sql = " SELECT COUNT(*) availDownC "
				+ " FROM coupon c "
				+ " WHERE id NOT IN ( "
				+ " SELECT cr.cnumber "
				+ " FROM couponrecord cr " 
				+ " WHERE cr.memid = ? ) " ;

		int availDownCoupon = 0;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if ( rs.next()) {
			availDownCoupon = rs.getInt("availDownC");
		} else {
			System.out.println("쿠폰개수 불러오기 실패");
		}			
		return availDownCoupon ;
	}


	@Override
	public int changePwd(String id, String pwd) throws SQLException {
		String sql = " UPDATE member "
				+ " SET passwd = ? "
				+ " WHERE id = ? ";
		int rowCount = 0 ;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, id);
			rowCount = pstmt.executeUpdate();			
		} catch (SQLException e) {
			// TODO: handle exception
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		return rowCount;
	}


	@Override
	public int changeinfo(String id, String phoneNum, String email) throws SQLException {
		String sql = "UPDATE member "
				+ " SET phonenum = ? , email= ? "
				+ " WHERE id = ? " ; 
		int rowCount = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phoneNum);
			pstmt.setString(2, email);
			pstmt.setString(3, id);
			rowCount = pstmt.executeUpdate();
		} catch (SQLException e) {

		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		return rowCount;
	}


	@Override
	public Map<String, String> originInfoLoad(String id) throws SQLException {
		String email = getEmail(id);
		String phoneNum = getPhoneNum(id);
		String prePhoneNum = phoneNum.substring(0,3);
		System.out.println(prePhoneNum);
		String postPhoneNum = phoneNum.substring(3);
		String name = getName(id);

		Map <String,String> infoMap = new HashMap<String, String>();
		infoMap.put("email", email);
		infoMap.put("prePhoneNum", prePhoneNum);
		infoMap.put("postPhoneNum", postPhoneNum);
		infoMap.put("name", name);
		return infoMap;
	}

	@Override
	public String getEmail(String id) throws SQLException {
		String sql = "SELECT email "
				+ " FROM member "
				+ " WHERE id = ?  " ; 
		String email = "";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				email = rs.getString("email");
			} else {
				System.out.println("이메일 불러오기 실패");
			}						
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}			
		return email;
	}


	@Override
	public String getPhoneNum(String id) throws SQLException {
		String sql = "SELECT phonenum "
				+ " FROM member "
				+ " WHERE id = ?  " ; 
		String phoneNum = "";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				phoneNum = rs.getString("phonenum");
			} else {
				System.out.println("핸드폰번호 불러오기 실패");
			}						
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}			
		return phoneNum;
	}


	@Override
	public String getName(String id) throws SQLException {
		String sql = "SELECT name "
				+ " FROM member "
				+ " WHERE id = ?  " ; 
		String name = "";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				name = rs.getString("name");
			} else {
				System.out.println("이름 불러오기 실패");
			}						
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}			
		return name;
	}


	@Override
	public Map<String, String> agreeInfoRcv(String id) throws SQLException {
		String email = getEmail(id);
		String phoneNum = getPhoneNum(id);
		String prePhoneNum = phoneNum.substring(0,3);
		System.out.println(prePhoneNum);

		// email xxx*****@xxxx.com
		int alpha = email.indexOf("@");

		String preEmail = email.substring(0,3);
		String star =  "*".repeat(4);
		String postEmail = email.substring(alpha, email.length());

		// phone 010-****-xxxx
		String postPhoneNum = phoneNum.substring(phoneNum.length()-4);

		String name = getName(id);

		Map <String,String> infoMap = new HashMap<String, String>();
		infoMap.put("email", preEmail + star + postEmail);
		infoMap.put("prePhoneNum", prePhoneNum);
		infoMap.put("postPhoneNum", postPhoneNum);
		infoMap.put("name", name);
		return infoMap;

	}


	@Override
	public String idCheck(String id) {
		//  0(사용가능)  1(사용불가능)
		String sql = " select count(*) cnt " 
				+ " from member  "
				+ " where id =  ?";					     
		String jsonResult =  null;  //   "{ "count":1 }"; 

		try (PreparedStatement pstmt =	conn.prepareStatement(sql)) {
			pstmt.setString(1, id );
			rs = pstmt.executeQuery();
			rs.next();
			int cnt = rs.getInt("cnt");  
			// jsonResult  = "{ \"count\":  "+ cnt +" }";
			jsonResult  = String.format("{ \"count\":%d }", cnt) ;
			System.out.println( " jsonReuslt :  " + jsonResult);
			/*
					JSONObject jsonResult = new JSONObject();
					jsonResult.put("count" , cnt);
			 */
		}catch(Exception e){
			e.printStackTrace();
		}finally{ 
			JdbcUtil.close(rs); 
			JdbcUtil.close(pstmt);
		}

		return jsonResult;
	}


	@Override
	public int registerMbr(MemberDTO dto) throws SQLException {
		// dto 
		int rowCount = 0;
		String id = dto.getId();
		String email = dto.getEmail();
		String name = dto.getName();
		String passwd = dto.getPasswd();
		String phonePhone = dto.getPhoneNum();
		String address = dto.getAddress();
		
		String sql =  " INSERT INTO MEMBER( "
				+ " id,email,address,phonenum,name,passwd,birthd, "
				+ " REGISTERDATE,UPDATEDATE,LOGINNOTIFICATION,LOGIN2NOTIFICATION ) "
				+ " VALUES (?,? ,?,?,?, "
				+ "		?,?,SYSDATE,SYSDATE,'0','0') ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			pstmt.setString(3, address);
			pstmt.setString(4, phonePhone);
			pstmt.setString(5, name);
			pstmt.setString(6, passwd);
			pstmt.setString(7, "1991-12-01");
			
			rowCount = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rowCount;
	}

















}
