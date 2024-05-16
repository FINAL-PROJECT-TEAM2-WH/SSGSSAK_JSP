package productList.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import productList.domain.ProdCateDTO;

public interface CategoryDAO {


		//상품상세페이지 상단 카테고리바 데이터 가져와줄 메서드
		//해당 상품 아이디에 맞는 카테고리아이디 값의 마지막 카테고리까지 출력
		//세분류 "없음" 일시 출력되지 않도록 처리해야함
//		ArrayList<CategoryDTO> viewTopCate (long id) throws SQLException;

	//다음에 풀 땡길때까지 임시로 씀 id값 long으로 바뀌어야함
		ArrayList<ProdCateDTO> viewTopCate(long id) throws SQLException; 
		
		//왼쪽사이드 카테고리 리스트 뿌려줄 메서드
		//아직작업안함
		//하나에 몰아넣을지 고민중
//		ArrayList<CategoryDTO> middleSelect () throws SQLException ;
//		ArrayList<CategoryDTO> subSelect () throws SQLException ;
//		ArrayList<CategoryDTO> miniSelect () throws SQLException ;
		

		
		
}
