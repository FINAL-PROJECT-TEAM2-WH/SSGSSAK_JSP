package like.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import com.util.JdbcUtil;

import like.persistence.LikeDAO;

public class LikeService {
private static LikeService instance = null;
	
	private LikeDAO dao = null;
	private Connection conn = null;
	
	private LikeService() {}
	
	public LikeService(LikeDAO dao) {
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
	
	public int cancelLike(ArrayList<String> productIdList, String id) {
		int rowCount = 0;
		try {
			rowCount = dao.cancelLike(productIdList, id) ; 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {		
			JdbcUtil.close(conn);
		}
		return rowCount;
		
	}
	
	public int addFolder(String id, String folderName) {
		int rowCount = 0;
		try {
			rowCount = dao.addFolder(id,folderName) ; 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {		
			JdbcUtil.close(conn);
		}
		return rowCount;
	}
	
	public ArrayList<String> getFolderName(String id) {
		ArrayList<String> folderList = null;
		try {
			folderList = dao.getFolderName(id) ; 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {		
			JdbcUtil.close(conn);
		}
		return folderList;
	}
}
