package review.persistence;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;



public interface ReviewImgDAO {

	List<ReviewImgDTO> select(long productcode) throws SQLException;
	
	
//	// 1 - 2  게시글 목록 조회 + 페이징 처리 O
//		ArrayList<ReviewDTO> select (int currentPage, int numberPerPage) throws SQLException ; 
//	// 2. 게시글 쓰기 
//		int insert(ReviewDTO dto) throws SQLException ;// 새로 입력된 정보가 다 담겨져 있음
//		
//	// 3. 		상세 보기 - 조회수 증가 
//		int increaseReaded(long seq) throws SQLException; 
//	
//	// 3 - 2 	상세 보기 수정, 삭제가 일어나니까 BoardDTO 로 줘야댐 
//		ReviewDTO view(long seq) throws SQLException;
//	
//	// 4. 게시글 삭제
//		int delete(long seq) throws SQLException;
//		
//	// 5. 게시글 수정
//		int update(ReviewDTO dto) throws SQLException;
//
//	// 6. 게시글 검색
//		ArrayList<ReviewDTO> search(int searchCondition, String searchWord, int currentPage, int numberPerPage) throws SQLException;
//	
//	// 총 레코드 수
//	int getTotalRecords() throws SQLException;
//	
//	
//	// 총 페이지 수 
//	int getTotalPages(int numberPerPage) throws SQLException;
//	
//	
//	
//	// 검색 총 페이지 수 
//	int getTotalPages(int numberPerPage, int searchCondition, String searchWord) throws SQLException;
//
//	// 해당 게시글의 비밀번호를 반환하는 메서드
//	 String getOriginalPwd(int seq) throws SQLException;
}
