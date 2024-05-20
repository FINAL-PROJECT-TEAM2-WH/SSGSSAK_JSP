package like.persistence;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.util.JdbcUtil;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;


public class LikeDAOImpl implements LikeDAO{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 1. Setter를 통한 DI
	public void setConn(Connection conn) {
		this.conn = conn;
	}

	// 2. 생성자를 통한 DI
	public LikeDAOImpl(Connection conn) {
		this.conn = conn;
	}

	// 2 - 2 . Getter
	public Connection getConn() {
		return this.conn;
	}

	@Override
	public int insLike(String memid, String id) throws SQLException {
		int rowCount = 0;
		// 이러면 id 값 가져옴 . 
		String sql = " SELECT id seqNum"
				+ " FROM divisionfolder "
				+ " WHERE memid = ? AND name = '모아보기' "
				+ " ORDER BY id ";
		int seqNum = 0 ; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				do {
					seqNum = rs.getInt("seqNum");
				} while ( rs.next());		
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		sql = "INSERT INTO interestgoods "
				+ " (id, memid, productid,folderid) "
				+ " VALUES (interestGoods_seq.nextval,"
				+ " ?,?,?) ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			pstmt.setString(2, id);
			pstmt.setInt(3, seqNum);
			rowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
		} finally {
			JdbcUtil.commit(conn);
			JdbcUtil.close(pstmt);
		}
		
		return rowCount;
	}


	@Override
	public int checkLike(String memid, String id) throws SQLException {
		String sql = "SELECT COUNT(*) countLike"
				+ " FROM interestgoods "
				+ " WHERE memid = ? AND productid = ? ";
		
		int countLike = 0 ; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				do {
					countLike = rs.getInt("countLike");
				} while ( rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return countLike; 
	}


	@Override
	public int cancelLike(String memid, String id) throws SQLException {
		String sql = "DELETE FROM interestgoods "
				+ " WHERE memid = ? AND productid = ? ";
		int rowCount = 0; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			pstmt.setString(2, id);
			rowCount =  pstmt.executeUpdate();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			e.printStackTrace();
		} finally {		
			JdbcUtil.commit(conn);
			JdbcUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int cancelLike(ArrayList<String> productList, String id) throws SQLException {
		
		Iterator<String> ir = productList.iterator();
		String sql = " DELETE FROM interestgoods "
		        + " WHERE memid = ? AND productid in ( ";
		String jsonString = "" ;
		while (ir.hasNext()) {		
			jsonString = (String)ir.next();
		}
		 Gson gson = new Gson();	
		 JsonObject jsonObject = gson.fromJson(jsonString, JsonObject.class);
		        // 물음표 짜르기
		        String idList = " ?, ".repeat(jsonObject.size());
		        idList = idList.substring(0,idList.length()-2);
		        idList += " )";
		        sql += idList;
		int rowCount = 0 ; 		
		try {
			pstmt = conn.prepareStatement(sql);
			int index = 2;
			pstmt.setString(1, id);
			
			for (int i = 0; i < jsonObject.size(); i++) {
				pstmt.setLong(index + i, Long.parseLong(jsonObject.get("productid" + i).toString().replace("\"", "")));
			}
			System.out.println(sql);
		   rowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
		} catch (JSONException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
		} finally {
			JdbcUtil.commit(conn);
			JdbcUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int addFolder(String id, String folderName) throws SQLException {
		String sql = "INSERT INTO divisionfolder (id,memid,name) VALUES (division_seq.nextval,?,?)";
		
		int rowCount = 0 ;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, folderName);
			rowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
		} finally {
			JdbcUtil.commit(conn);
			JdbcUtil.close(pstmt);
		}		
		return rowCount;
	}
}
