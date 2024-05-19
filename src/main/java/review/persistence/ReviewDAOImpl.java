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
	public int insertReview(long productid, String memid, int productOptionId, String reviewContent, String reviewType,
	        double grade, int q1, int q2, int q3) throws SQLException {
	    int result = 0;

	    String sql = "INSERT INTO review (id, productid, memid, productOptionId, reviewContent, reviewDate, reviewType, grade, q1, q2, q3) "
	            + " VALUES (review_seq.NEXTVAL, ?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?) ";

	    try {
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setLong(1, productid);
	        pstmt.setString(2, memid);
	        pstmt.setInt(3, productOptionId);
	        pstmt.setString(4, reviewContent);
	        pstmt.setString(5, reviewType);
	        pstmt.setDouble(6, grade);
	        pstmt.setInt(7, q1);
	        pstmt.setInt(8, q2);
	        pstmt.setInt(9, q3);

	        result = pstmt.executeUpdate(); 
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        JdbcUtil.close(rs);  
	        JdbcUtil.close(pstmt);
	       
	    }

	    return result;
	}
	@Override
	public int insertReviewImg(String reviewImgUrl) throws SQLException {
		int result = 0;
		
		 String sql = " INSERT INTO reviewImg VALUES "
		 		+ " (reviewImg_seq.NEXTVAL,review_seq.CURRVAL,?) ";

		    try {
		        pstmt = conn.prepareStatement(sql);
		        pstmt.setString(1, reviewImgUrl);
		        result = pstmt.executeUpdate(); 
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        JdbcUtil.close(rs);  
		        JdbcUtil.close(pstmt);
		        
		    }

		
		return result;
	}
	@Override
	public List<ReviewDTO> select(int currentPage, int numberPerPage, long productcode) throws SQLException {
	    List<ReviewDTO> reviews = new ArrayList<>();
	    ReviewDTO dto = null;

	    String sql = "SELECT * FROM ("
	            + "    SELECT ROWNUM no, t.* FROM ("
	            + "        SELECT r.ID, r.PRODUCTID, r.MEMID, r.PRODUCTOPTIONID, r.REVIEWCONTENT, r.REVIEWDATE, r.REVIEWTYPE, r.GRADE, r.Q1, r.Q2, r.Q3"
	            + "        FROM review r WHERE r.PRODUCTID = ? ORDER BY r.ID DESC"
	            + "    ) t"
	            + ") WHERE no BETWEEN ? AND ?";

	    try {
	        int start = (currentPage - 1) * numberPerPage + 1;
	        int end = start + numberPerPage - 1;

	        pstmt = conn.prepareStatement(sql);
	        pstmt.setLong(1, productcode);
	        pstmt.setInt(2, start);
	        pstmt.setInt(3, end);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            dto = ReviewDTO.builder()
	                    .id(rs.getInt("ID"))
	                    .productId(rs.getLong("PRODUCTID"))
	                    .memid(rs.getString("MEMID"))
	                    .productOptionId(rs.getInt("PRODUCTOPTIONID"))
	                    .reviewContent(rs.getString("REVIEWCONTENT"))
	                    .reviewDate(rs.getDate("REVIEWDATE"))
	                    .reviewType(rs.getString("REVIEWTYPE"))
	                    .grade(rs.getDouble("GRADE"))
	                    .q1(rs.getInt("Q1"))
	                    .q2(rs.getInt("Q2"))
	                    .q3(rs.getInt("Q3"))
	                    .build();

	            reviews.add(dto);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("reviewDAOget");
	    } finally {
	        JdbcUtil.close(rs);
	        JdbcUtil.close(pstmt);
	    }

	    return reviews;
	}

	
	@Override
	public int getTotalRecords() throws SQLException {
		int totalRecords = 0;
		String sql =  " SELECT COUNT(*) FROM review ";
		pstmt= conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if (rs.next()) {
			totalRecords = rs.getInt(1);			
		}
		rs.close();
		pstmt.close();
		
		return totalRecords;
	}
	
	@Override
	public int getTotalPages(int numberPerPage,long productcode) throws SQLException {
	    int totalPages = 0;
	    String sql = "SELECT CEIL(COUNT(*) / ?) FROM review WHERE PRODUCTID = ?";
	    pstmt = conn.prepareStatement(sql);
	    pstmt.setInt(1, numberPerPage);
	    pstmt.setLong(2, productcode);
	    rs = pstmt.executeQuery();
	    if (rs.next()) {
	        totalPages = rs.getInt(1);    
	    }
	    rs.close();
	    pstmt.close();

	    return totalPages;
	}
	@Override
	public int getTotalPages(int numberPerPage, int searchCondition, String searchWord) throws SQLException {
		int totalPages=0;
		
		String sql = " SELECT CEIL(COUNT(*)/?) cnt "
				+ " FROM review "
				+" WHERE REGEXP_LIKE( REVIEWTYPE,?,'i' )";
		

		this.pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, numberPerPage);
		
		pstmt.setString(2, searchWord);
		
		rs = pstmt.executeQuery();
		if (rs.next()) {
			totalPages = rs.getInt("cnt");
			
		}
		rs.close();
		pstmt.close();
		
		
		
		return totalPages;
		
	}//getto
	@Override
	public List<ReviewDTO> search(int searchCondition, String searchWord, int currentPage, int numberPerPage,long productcode)
			throws SQLException {
		ReviewDTO review = null;
		List<ReviewDTO> reviews = null;
		
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
		   String sql  = " SELECT *  "
		   		+ " FROM  "
		   		+ " (  "
		   		+ " SELECT ROWNUM no, t.*   "
		   		+ " FROM    "
		   		+ " (  "
		   		+ " SELECT ID, PRODUCTID, MEMID, PRODUCTOPTIONID, REVIEWCONTENT, REVIEWDATE, REVIEWTYPE, GRADE, Q1, Q2, Q3  "
		   		+ " FROM review  "
		   		+ " WHERE reviewtype = ?  "
		   		+ " ORDER BY id DESC  "
		   		+ " )t   "
		   		+ " )b  "
		   		+ " WHERE no BETWEEN ? AND ? " ;
		   
		
		   try {
				int start = (currentPage - 1) * numberPerPage + 1 ;
				int end = start + numberPerPage - 1 ; 
		   		pstmt=conn.prepareStatement(sql);
		   		pstmt.setString(1, searchWord);
		   		pstmt.setInt(2, start);
		   		pstmt.setInt(3, end);
		   		
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
						
						    review= new ReviewDTO().builder()
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
						
						    reviews.add(review);
						
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
	






	

}
