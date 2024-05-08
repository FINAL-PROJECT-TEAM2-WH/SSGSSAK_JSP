package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.JdbcUtil;

import member.persistence.MemberDAO;

public class ChangeInfoService {
private static ChangeInfoService instance = null;
	
	private MemberDAO dao = null;
	private Connection conn = null;
	
	private ChangeInfoService() {}
	
	public ChangeInfoService(MemberDAO dao) {
		this.dao = dao;
	}

	public static ChangeInfoService getInstance() {
		if ( instance == null) {
			instance = new ChangeInfoService();
		}
		return instance;
	}
	
	public int changeinfo(String id, String phoneNum, String email) {
		int rowCount = 0; 
		
		try {
			rowCount = dao.changePwd(id,phoneNum,email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
}
