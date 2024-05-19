package member.service;

import java.sql.Connection;
import java.util.Map;

import com.util.JdbcUtil;

import member.persistence.MemberDAO;

public class LoginLogInfoService {
private static LoginLogInfoService instance = null;
	
	private MemberDAO dao = null;
	private Connection conn = null;
	private LoginLogInfoService() {}
	
	public LoginLogInfoService(MemberDAO dao) {
		this.dao = dao;
	}

	public static LoginLogInfoService getInstance() {
		if ( instance == null) {
			instance = new LoginLogInfoService();
		}
		return instance;
	}
	
	
	public Map<String,String> loadLoginInfo(String id) {
		
		int rowCount = 0;
		try {		
			rowCount = dao.getloginLog(id);		
		} catch (Exception e) {

		} finally {
			JdbcUtil.close(conn);
		}
		
		return null;
	}

	public boolean findlogId(String id) {
		boolean logStatus = false;
		try {		
			logStatus = dao.findlogId(id);		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		
		return logStatus;
	}

}
