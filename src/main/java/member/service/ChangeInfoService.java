package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

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
			rowCount = dao.changeinfo(id,phoneNum,email);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
	
	public Map<String,String> originInfoLoad(String id) {
		Map <String,String> infoMap = new HashMap();
		
		try {
			infoMap = dao.originInfoLoad(id);
			if ( infoMap.isEmpty()) {
				System.out.println("originInfoLoad가 비었습니다.");
			} 
		} catch (SQLException e) {
			e.printStackTrace();
			JdbcUtil.close(conn);
		}
		
		return infoMap;
	}
}
