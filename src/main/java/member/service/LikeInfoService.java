package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.MemberDTO;
import member.persistence.MemberDAO;
import member.persistence.MemberDAOImpl;

public class LikeInfoService {
private static LikeInfoService instance = null;
	
	private MemberDAO dao = null;
	
	public LikeInfoService() {}
	
	public LikeInfoService(MemberDAO dao) {
		this.dao = dao;
	}

	public static LikeInfoService getInstance() {
		if ( instance == null) {
			instance = new LikeInfoService();
		}
		return instance;
	}
	
	
	public ArrayList<Map<String,String>> getProductList(String id) {
		Connection conn = null;
		ArrayList <Map<String,String>> productList = null;
		try {
			conn = ConnectionProvider.getConnection();
			productList = dao.getproductList(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
		}
		
		return productList;
	}
}
