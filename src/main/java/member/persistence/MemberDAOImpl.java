package member.persistence;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
	private CallableStatement callStatement = null;

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
	public MemberDTO login(String id, String passwd) throws SQLException {
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
	public int updateLoginYN(String id) throws SQLException {
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
			JdbcUtil.rollback(conn);
			e.printStackTrace();
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
	public int logOut(String id) throws SQLException {
		String sql = String.format("DELETE FROM Auth WHERE id = '%s'", id);
		int rowCount = 0;
		try {
			pstmt=conn.prepareStatement(sql);
			rowCount = pstmt.executeUpdate(sql);
			if ( rowCount == 1) {
				System.out.println("로그아웃 성공");
				JdbcUtil.commit(conn);
			} else {
				JdbcUtil.rollback(conn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 

		return rowCount;
	}





	// info에 필요한 값 불러오기 
	@Override
	public Map<String, String> loadInfo(String id) throws SQLException { 
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
			JdbcUtil.rollback(conn);
			e.printStackTrace();
			
		} finally {
			JdbcUtil.commit(conn);
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
			JdbcUtil.rollback(conn);
			e.printStackTrace();
			
		} finally {
			JdbcUtil.commit(conn);
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
	public Map<String, String> agreeInfoRcv(String id, String conditionName) throws SQLException {
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
		
		// 마케팅 id 22번 23번 24번 ssgInfoRcvAgree=10
		ArrayList <String> conList = getAgreement(id, conditionName);
		
		

		Map <String,String> infoMap = new HashMap<String, String>();
		
		if ( conList != null) {
			for (int i = 0; i < conList.size(); i++) {
				infoMap.put(conList.get(i), "true");
			}
		} else {
			
			// 동의를 안했을 경우. 
			infoMap.put(conditionName, "false");
		}
			
		infoMap.put("email", preEmail + star + postEmail);
		infoMap.put("prePhoneNum", prePhoneNum);
		infoMap.put("postPhoneNum", postPhoneNum);
		infoMap.put("name", name);
		return infoMap;

	}
	
	
	@Override
	public ArrayList<String> getAgreement(String id, String conditionName) throws SQLException {
		String sql = " SELECT t.name conName"
				+ " FROM agreement d left join terms t on d.terms_id=t.id "
				+ " WHERE REGEXP_LIKE(t.name, ? ) AND d.memid = ? ";
		ArrayList<String> condiList = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, conditionName);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();		
			if ( rs.next()) {
				condiList = new ArrayList();
				do {
					String conName = rs.getString("conName");		
					condiList.add(conName);
				} while(rs.next());
			} 			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		
		
		return condiList;
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
	public int registerMbr(MemberDTO dto, Map<String,String> map, Map<String,String> address) throws SQLException {
		// dto 
		int rowCount = 0;
		String id = dto.getId();
		String email = dto.getEmail();
		String name = dto.getName();
		String passwd = dto.getPasswd();
		String phonePhone = dto.getPhoneNum();

		String sql =  " INSERT INTO MEMBER( "
				+ " id,email,phonenum,name,passwd,birthd, "
				+ " REGISTERDATE,UPDATEDATE,LOGINNOTIFICATION,LOGIN2NOTIFICATION ) "
				+ " VALUES (?,?,?,?,?, "
				+ "		?,SYSDATE,SYSDATE,'0','0') ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			pstmt.setString(3, phonePhone);
			pstmt.setString(4, name);
			pstmt.setString(5, passwd);
			pstmt.setString(6, "1991-12-01");

			rowCount = pstmt.executeUpdate();

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			JdbcUtil.rollback(conn);
			e.printStackTrace();
		} finally {
			JdbcUtil.commit(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		// INSERT into shippingplaceinformation VALUES (seqshipplaceinfo.NEXTVAL,회원id,회원id,회원id,회원연락처,우편번호,'기본배송지','도로명주소','지번주소','상세주소')
		// 배송지 insert 문 
		sql =  " INSERT into shippingplaceinformation"
				+ " VALUES (seqshipplaceinfo.NEXTVAL,"
				+ "?,?,?,?,?, "
				+ " ? , ? , ? ,'기본배송지'"
				+ " ) ";

		try {
		
			String zipCode = address.get("zipcode");
			String roadAddress = address.get("roadAddress");		
			String jibunAddress = address.get("jibunAddress");
			String detailAddress = address.get("detailAddress");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, id);
			pstmt.setString(3, id);
			pstmt.setString(4, roadAddress);
			pstmt.setString(5, jibunAddress);
			pstmt.setString(6, detailAddress);
			pstmt.setString(7, transtoPhoneNum(phonePhone));
			pstmt.setString(8, zipCode);
			
			rowCount = pstmt.executeUpdate();		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			JdbcUtil.rollback(conn);
			e.printStackTrace();
		} finally {
			JdbcUtil.commit(conn);
			JdbcUtil.close(pstmt);
		}
		
		// 필수 약관 동의 
		// 프로시저로 처리	
		boolean result = false;
		sql = "{call ins_req_terms(?)}";
		try {
			callStatement = conn.prepareCall(sql);
			callStatement.setString(1, id);
			result = callStatement.execute();

		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			e.printStackTrace();
		} finally {
			JdbcUtil.commit(conn);
			JdbcUtil.close(callStatement);
			JdbcUtil.close(pstmt);
		}
		
		if (result) {
			rowCount += 1; 
		}

		// 선택 약관 동의 
		if ( map != null) {
			System.out.println("get in Map");
			List <String> agree = new ArrayList(map.keySet());
			for (String string : agree) {	
				sql = "{call ins_sel_terms(?,?)}";
				try {
					callStatement = conn.prepareCall(sql);
					callStatement.setString(1, string);
					callStatement.setString(2, id);	
					result = callStatement.execute();
				} catch (SQLException e) {
					JdbcUtil.rollback(conn);
					e.printStackTrace();
				} finally {
					JdbcUtil.commit(conn);
					JdbcUtil.close(callStatement);
					JdbcUtil.close(pstmt);
				}
			}
		}
		
		if (result) {
			rowCount += 1; 
		}
		
		
		System.out.println(rowCount);
		return rowCount;
	}
	
	@Override
	public String transtoPhoneNum (String phoneNum) {
		//010
		String preNum = phoneNum.substring(0,3);
		String middleNum = "";
		String postNum = "";
		if ( phoneNum.length() == 10) {
		// 뒷자리가 7자리일 때	
			middleNum = phoneNum.substring(3,6);
			postNum = phoneNum.substring(6);
		} else {
			middleNum = phoneNum.substring(3,7);
			postNum = phoneNum.substring(7);
		}
		
		return String.format("%s-%s-%s", preNum,middleNum,postNum);
	}

















}
