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

public class ReviewDAOImpl implements ReviewDAO {

	private Connection conn = null;
	private PreparedStatement pstmt= null;
	private ResultSet rs = null;
	
	
	public Connection getConn() {
		return conn;
	}
	public ReviewDAOImpl(Connection conn) {
		this.conn=conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}
	@Override
	public List<ReviewDTO> select(long productcode) throws SQLException {
		// 리뷰 다가져오기
		ReviewDTO  dto = null;
		
		List<ReviewDTO> reviews = new ArrayList<ReviewDTO>();
		
		   int id ;
		   long productId;
		   String memid  ;
		   int productOptionId  ;
		   String reviewContent ;
		   Date reviewDate  ;
		   String reviewType  ;
		   double grade  ;
		   int q1 ;
		   int q2 ;
		   int q3 ;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   String sql = " SELECT r.ID, r.PRODUCTID, r.MEMID, r.PRODUCTOPTIONID, r.REVIEWCONTENT, r.REVIEWDATE, r.REVIEWTYPE, r.GRADE, r.Q1, r.Q2, r.Q3 "
				+ " FROM product p JOIN review r ON p.id =r.productId  "
				+ " WHERE p.id = ? ";
		
		   
		   	try {
		   		pstmt=conn.prepareStatement(sql);
				pstmt.setLong(1, productcode);
				rs= pstmt.executeQuery();
				
				
				
				if (rs.next()) {
					do {
						    id = rs.getInt(1);
						    productId = rs.getLong(2);
						    memid = rs.getString(3) ;
						    productOptionId = rs.getInt(4)  ;
						    reviewContent = rs.getString(5) ;
						    reviewDate = rs.getDate(6) ;
						    reviewType = rs.getString(7) ;
						    grade = rs.getDouble(8) ;
						    q1 = rs.getInt(9) ;
						    q2 = rs.getInt(10);
						    q3 =rs.getInt(11);
						
						    dto= new ReviewDTO().builder()
						    		.id(id)
						    		.productId(productId)
						    		.memid(memid)
						    		.productOptionId(productOptionId)
						    		.reviewContent(reviewContent)
						    		.reviewDate(reviewDate)
						    		.reviewType(reviewType)
						    		.grade(grade)
						    		.q1(q1)
						    		.q2(q2)
						    		.q3(q3)
						    		.build();
						
						    reviews.add(dto);
						
					} while (rs.next());
					
				}
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("reviewDAOget");
			}finally {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(conn);
			}
			

		return reviews;
	}
	@Override
	public ArrayList<ReviewDTO> select(int currentPage, int numberPerPage) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int insert(ReviewDTO dto) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int increaseReaded(long seq) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public ReviewDTO view(long seq) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int delete(long seq) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int update(ReviewDTO dto) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public ArrayList<ReviewDTO> search(int searchCondition, String searchWord, int currentPage, int numberPerPage)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int getTotalRecords() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int getTotalPages(int numberPerPage, int searchCondition, String searchWord) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String getOriginalPwd(int seq) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}


	

}
