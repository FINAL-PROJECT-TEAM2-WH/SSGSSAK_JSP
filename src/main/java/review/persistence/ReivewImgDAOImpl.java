package review.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;

public class ReivewImgDAOImpl implements ReviewImgDAO {

	private Connection conn =null;
	private PreparedStatement pstmt= null;
	private ResultSet rs = null;
	
	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public ReivewImgDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public List<ReviewImgDTO> select(long productcode) throws SQLException {
		ReviewImgDTO dto = null;
		
		List<ReviewImgDTO> images = new ArrayList<ReviewImgDTO>();
		   int id ;
		   int reviewId;
		   String reviewImgUrl  ;
		String sql  =" SELECT ri.ID, ri.REVIEWID, ri.REVIEWIMGURL "
				+ " FROM product p  "
				+ " JOIN review r ON p.id= r.productid "
				+ " JOIN reviewImg ri ON r.id=ri.reviewid "
				+ " WHERE p.id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, productcode);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				do {
					
					id = rs.getInt(1);
					reviewId = rs.getInt(2);
					reviewImgUrl = rs.getString(3);
					dto = new ReviewImgDTO().builder()
							.id(id)
							.reviewId(reviewId)
							.reviewImgUrl(reviewImgUrl)
							.build();
					
					images.add(dto);
				} while (rs.next());
			}else {
				System.out.println("이미지가 없음");
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(conn);
			
		}
		
		
		return images;
		
	}
	
	
	
	
	
}//class
