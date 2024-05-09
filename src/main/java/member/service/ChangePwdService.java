package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import com.util.JdbcUtil;

import member.persistence.MemberDAO;

public class ChangePwdService {
private static ChangePwdService instance = null;
	
	private MemberDAO dao = null;
	private Connection conn = null;
	
	private ChangePwdService() {}
	
	public ChangePwdService(MemberDAO dao) {
		this.dao = dao;
	}

	public static ChangePwdService getInstance() {
		if ( instance == null) {
			instance = new ChangePwdService();
		}
		return instance;
	}
	
	public int changePwd(String id , String pwd) {
		int rowCount = 0; 
		
		try {
			rowCount = dao.changePwd(id,pwd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
}
