package member.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import member.domain.BoardDTO;
import member.domain.PageDTO;
import member.persistence.BoardDAOImpl;

public class ListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> ListHandler.process() ... ");

		// List.java -> ListHandler.process() 이동.
		int currentPage = 1; 	//현재 페이지 번호
		// 한 페이지에 출력할 게시글 수
		int numberOfPageBlock = 10;
		int numberPerPage = 10;
		int totalRecords = 0; // 총 레코드 수
		int totalPages = 0; //총 페이지 수
		String searchWord = null;
		int searchCondition = 1;


		String numberPerPages = request.getParameter("numberPerPage");

		if ( numberPerPages == null || numberPerPages.equals("")) {
			numberPerPages = "10";
		}

		numberPerPage = Integer.parseInt(numberPerPages);


		try {
			searchCondition = Integer.parseInt(request.getParameter("searchCondition"));
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		
		try {
			searchWord = request.getParameter("searchWord");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		//검색파라미터 끝 

		try {
			currentPage = Integer.parseInt(request.getParameter("currentpage"));
		} catch (Exception e) {
			e.printStackTrace();
		}

		Connection conn = ConnectionProvider.getConnection();
		BoardDAOImpl dao = new BoardDAOImpl(conn);
		ArrayList<BoardDTO> list = null;
		PageDTO pDto = null;

		System.out.println();
		try {
			if (searchWord == null || searchWord.equals("")) {
				System.out.println(currentPage);
				list = dao.select(currentPage, numberPerPage);
				totalPages = dao.getTotalPages(numberPerPage);

			} else {
				System.out.println(currentPage);
				list = dao.search(searchCondition, searchWord, currentPage, numberPerPage);
				totalPages = dao.getTotalPages(numberPerPage, searchCondition, searchWord);

			} //if
			pDto = new PageDTO(currentPage, numberPerPage, numberOfPageBlock, totalPages);
		} catch (SQLException e) {
			System.out.println("> List.doGet() Exception...");
			e.printStackTrace();
		}
		conn.close();

		// 1. 
		request.setAttribute("list",list);
		request.setAttribute("pDto",pDto);
		// [ 검색 기능 + 페이징 처리 ]

		// request.setAttribute("list",list);
		/* request.setAttribute(null, response); */


		return "/days06/board/list.jsp";// "list.jsp"
	}
}
