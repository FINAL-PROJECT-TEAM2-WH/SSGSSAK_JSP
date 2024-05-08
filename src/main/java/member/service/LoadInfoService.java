package member.service;

import java.sql.Connection;
import java.util.Map;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;

public class LoadInfoService {
private static LoadInfoService instance = null;
	
	private MemberDAO dao = null;
	private Connection conn = null;
	
	private LoadInfoService() {}
	
	public LoadInfoService(MemberDAO dao) {
		this.dao = dao;
	}

	public static LoadInfoService getInstance() {
		if ( instance == null) {
			instance = new LoadInfoService();
		}
		return instance;
	}
	
	
	public Map<String,String> loadInfo(String id) {
		Map <String,String> infoMap = null;
		try {
			infoMap = dao.loadInfo(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {		
			JdbcUtil.close(conn);
		}
		return infoMap;
	}
	
	
}
