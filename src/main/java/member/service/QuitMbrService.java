package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;

public class QuitMbrService {
private static QuitMbrService instance = null;
	
	private MemberDAO dao = null;
	
	public QuitMbrService() {}
	
	public QuitMbrService(MemberDAO dao) {
		this.dao = dao;
	}

	public static QuitMbrService getInstance() {
		if ( instance == null) {
			instance = new QuitMbrService();
		}
		return instance;
	}
	
	
	public int quitMbr(String id, String quitReason) {
		int rowCount = 0 ;
		
		try {
			rowCount = dao.quitMbr(id,quitReason);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		
		}
		
		return rowCount;
	}
}
