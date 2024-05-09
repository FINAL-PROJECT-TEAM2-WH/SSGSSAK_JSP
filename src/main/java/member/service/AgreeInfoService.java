package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import com.util.JdbcUtil;

import member.persistence.MemberDAO;

public class AgreeInfoService {
private static AgreeInfoService instance = null;
	
	private MemberDAO dao = null;
	private Connection conn = null;
	
	private AgreeInfoService() {}
	
	public AgreeInfoService(MemberDAO dao) {
		this.dao = dao;
	}

	public static AgreeInfoService getInstance() {
		if ( instance == null) {
			instance = new AgreeInfoService();
		}
		return instance;
	}
	
	public Map<String,String> originInfoLoad(String id) {
		Map <String,String> infoMap = new HashMap();
		
		try {
			infoMap = dao.agreeInfoRcv(id);
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
