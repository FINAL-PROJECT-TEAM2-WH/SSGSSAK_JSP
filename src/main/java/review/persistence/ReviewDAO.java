package review.persistence;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import member.domain.BoardDTO;
import review.domain.ReviewDTO;



public interface ReviewDAO {

	List<ReviewDTO> select(long productcode) throws SQLException;
	
	List<ReviewDTO> select (int currentPage, int numberPerPage,long productcode) throws SQLException ; 
	
	int insertReview(long productid,String memid,int productOptionId,String reviewContent,String reviewType,double grade ,int q1,int q2,int q3 ) throws SQLException;
	
	
	int insertReviewImg(String reviewImgUrl) throws SQLException;
	
	List<ReviewDTO> search(int searchCondition, String searchWord, int currentPage, int numberPerPage,long productcode) throws SQLException;
	

	int getTotalRecords() throws SQLException;
	int getTotalPages(int numberPerPage, int searchCondition, String searchWord) throws SQLException;

	int getTotalPages(int numberPerPage, long productcode) throws SQLException;
}
