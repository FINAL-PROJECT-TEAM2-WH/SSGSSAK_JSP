package member.service;

import java.sql.Connection;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;

public class LogoutService {
private static LogoutService instance = null;
	
	private MemberDAO dao = null;
	private Connection conn = null;
	private LogoutService() {}
	
	public LogoutService(MemberDAO dao) {
		this.dao = dao;
	}

	public static LogoutService getInstance() {
		if ( instance == null) {
			instance = new LogoutService();
		}
		return instance;
	}
	
	
	public int logout(String id) {
		
		int rowCount = 0;
		try {		
			rowCount = dao.logOut(id);		
		} catch (Exception e) {

		} finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
}
