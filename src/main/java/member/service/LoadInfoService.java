package member.service;

import java.sql.Connection;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;

public class LoadInfoService {
private static LoadInfoService instance = null;
	
	private MemberDAO dao = null;
	
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
	
	
	

}
