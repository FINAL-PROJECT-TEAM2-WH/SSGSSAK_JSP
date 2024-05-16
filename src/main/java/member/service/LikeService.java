package member.service;

import java.sql.Connection;
import java.util.Map;

import com.util.JdbcUtil;

import member.persistence.MemberDAO;

public class LikeService {
private static LikeService instance = null;
	
	private MemberDAO dao = null;
	private Connection conn = null;
	
	private LikeService() {}
	
	public LikeService(MemberDAO dao) {
		this.dao = dao;
	}

	public static LikeService getInstance() {
		if ( instance == null) {
			instance = new LikeService();
		}
		return instance;
	}
	
	public int insLike(String memid, String id) {
		int rowCount = 0;
		try {
			rowCount = dao.insLike(memid, id) ; 
		} catch (Exception e) {

			e.printStackTrace();
		} finally {		
			JdbcUtil.close(conn);
		}
		return rowCount;

	}
	
	public int checkLike(String memid, String id) {
		int rowCount = 0;
		try {
			rowCount = dao.checkLike(memid, id) ; 
		} catch (Exception e) {

			e.printStackTrace();
		} finally {		
			JdbcUtil.close(conn);
		}
		return rowCount;
	}
	
	public int cancelLike(String memid,String id) {
		int rowCount = 0;
		try {
			rowCount = dao.cancelLike(memid, id) ; 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {		
			JdbcUtil.close(conn);
		}
		return rowCount;
		
	}
}
