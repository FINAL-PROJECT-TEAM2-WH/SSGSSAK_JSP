package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import member.domain.BoardDTO;

public class BoardDAOImpl implements BoardDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 1. Setter를 통한 DI
	public void setConn(Connection conn) {
		this.conn = conn;
	}


	// 2. 생성자를 통한 DI
	public BoardDAOImpl(Connection conn) {
		this.conn = conn;
	}

	// 2 - 2 . Getter
	public Connection getConn() {
		return this.conn;
	}

	@Override
	public ArrayList<BoardDTO> select() throws SQLException {

		ArrayList<BoardDTO> boardList = null ; 


		//seq, title, writer, email, writedate, readed
		long seq;
		String title;
		String writer;
		String email;
		Date writedate;
		int readed;

		ResultSet rs = null ;
		String sql = "SELECT seq, title, writer, email, writedate, readed "
				+ "FROM TBL_CSTVSBOARD "
				+ "ORDER BY seq DESC";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				boardList = new ArrayList();
				do {
					seq = rs.getLong(1);
					title = rs.getString(2);
					writer = rs.getString(3);
					email = rs.getString(4);
					writedate = rs.getDate(5);
					readed = rs.getInt(6);
					BoardDTO dto = new BoardDTO()
							.builder()
							.seq(seq)
							.title(title)
							.writer(writer)
							.email(email)
							.writedate(writedate)
							.readed(readed)
							.build();
					boardList.add(dto);
				} while ( rs.next());
			}     
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return boardList;
	}


	// 어떤 사용자가 글쓰기 작업을 하겠다고 해서 글쓰기 버튼을 눌러서 입력된 정보들을 DTO 로 만들어서 컨트롤을 거쳐서 서비스로 왔고 
	// 서비스에서 디비 처리 메소드로 여기ㄷ로 왔고 ,.
	@Override
	public int insert(BoardDTO dto) throws SQLException {

		// writedate default sysdate
		// readed	 default 	0 
		int rowCount = 0;
		String sql = "INSERT INTO tbl_cstvsboard "
				+ "(seq, writer, pwd, email, title, tag, content) "
				+ "VALUES (seq_tbl_cstvsboard.NEXTVAL, ?, ?, ?, ?, ?, ?) ";
		this.pstmt = this.conn.prepareStatement(sql);
		pstmt.setString(1, dto.getWriter());
		pstmt.setString(2, dto.getPwd());
		pstmt.setString(3, dto.getEmail());
		pstmt.setString(4, dto.getTitle()); 
		pstmt.setInt(5, dto.getTag());
		pstmt.setString(6, dto.getContent());

		rowCount = this.pstmt.executeUpdate();

		this.pstmt.close();
		return rowCount;
	}



	@Override
	public int increaseReaded(long seq) throws SQLException {
		String sql = "UPDATE tbl_cstvsboard "
				+ "SET readed = readed + 1 "
				+ "WHERE seq = ? ";
		int rowCount = 0;
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setLong(1, seq);
		rowCount = this.pstmt.executeUpdate();
		return rowCount;
	}



	@Override
	public BoardDTO view(long seq) throws SQLException {
		BoardDTO dto = null;
		String title;
		String writer;
		String email;
		String content;
		Date writedate;
		int readed;
		int tag;

		ResultSet rs = null ;
		String sql = "SELECT seq, title, writer, email, writedate, readed, content,tag "
				+ "FROM TBL_CSTVSBOARD "
				+ "WHERE seq = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, seq);
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				seq = rs.getLong(1);
				title = rs.getString(2);
				writer = rs.getString(3);
				email = rs.getString(4);
				writedate = rs.getDate(5);
				readed = rs.getInt(6);
				content = rs.getString(7);
				tag = rs.getInt(8);
				dto = new BoardDTO()
						.builder()
						.seq(seq)
						.title(title)
						.writer(writer)
						.email(email)
						.writedate(writedate)
						.readed(readed)
						.content(content)
						.tag(tag)
						.build();
			}     
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return dto;
	}


	@Override
	public int delete(long seq) throws SQLException {
		int rowCount = 0 ; 
		String sql = "DELETE FROM tbl_cstvsboard "
				+ "WHERE seq = ? ";

		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setLong(1, seq);

		rowCount = this.pstmt.executeUpdate();

		this.pstmt.close();

		return rowCount;
	}


	@Override
	public int update(BoardDTO dto) throws SQLException {
		int rowCount = 0;
		String sql = "UPDATE tbl_cstvsboard "
				+ "SET email = ? , title = ? , tag = ? , content = ?  "
				+ "WHERE seq = ?";
		this.pstmt = this.conn.prepareStatement(sql);
		pstmt.setString(1, dto.getEmail());
		pstmt.setString(2, dto.getTitle());
		pstmt.setInt(3, dto.getTag());
		pstmt.setString(4, dto.getContent()); 
		pstmt.setLong(5, dto.getSeq());		
		rowCount = this.pstmt.executeUpdate();
		this.pstmt.close();

		return rowCount;
	}


	@Override
	public ArrayList<BoardDTO> search(int searchCondition, String searchWord,int currentPage, int numberPerPage) throws SQLException {
		ArrayList<BoardDTO> boardList = null ; 

		long seq;
		String title;
		String writer;
		String email;
		Date writedate;
		int readed;

		ResultSet rs = null ;
		String sql = "SELECT * "
				+ "FROM  "
				+ "( "
				+ "SELECT ROWNUM no, t.*  "
				+ "FROM  "
				+ "( "
				+ "SELECT seq, title, writer, email, writedate, readed "
				+ "FROM TBL_CSTVSBOARD ";
		// WHERE 검색조건 START
		switch ( searchCondition) {
		case 1:  // 제목
			sql += " WHERE REGEXP_LIKE( title, ?, 'i') ";
			break;
		case 2: // 내용
			sql += " WHERE REGEXP_LIKE( content, ?, 'i') ";
			break;
		case 3: // 작성자
			sql += " WHERE REGEXP_LIKE( writer, ?, 'i') ";
			break;         
		case 4: // 제목 + 내용 
			sql += " WHERE REGEXP_LIKE( title, ?, 'i') OR  REGEXP_LIKE( content, ?, 'i') ";
			break;
		} // switch
		// END
		sql += "ORDER BY seq DESC "
				+ ") t  "
				+ ") b "
				+ "WHERE no BETWEEN ? AND ?";
		try {
			pstmt = conn.prepareStatement(sql);
			
			int start = (currentPage - 1) * numberPerPage + 1 ;
			int end = start + numberPerPage - 1 ; 
			pstmt = conn.prepareStatement(sql);
			

			if (searchCondition != 4) {
				pstmt.setString(1, searchWord);
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
			} else {
				pstmt.setString(1, searchWord);
				pstmt.setString(2, searchWord);
				pstmt.setInt(3, start);
				pstmt.setInt(4, end);
			}
			
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				boardList = new ArrayList();
				
				do {
					seq = rs.getLong("seq");
					title = rs.getString("title");
					writer = rs.getString("writer");
					email = rs.getString("email");
					writedate = rs.getDate("writedate");
					readed = rs.getInt("readed");
					BoardDTO dto = new BoardDTO().builder()
							.seq(seq)
							.title(title)
							.writer(writer)
							.email(email)
							.writedate(writedate)
							.readed(readed)
							.build();
					boardList.add(dto);
				} while ( rs.next());
			}     
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return boardList;
	}


	@Override
	public ArrayList<BoardDTO> select(int currentPage, int numberPerPage) throws SQLException {
		ArrayList<BoardDTO> boardList = null ; 
		//seq, title, writer, email, writedate, readed
		long seq;
		String title;
		String writer;
		String email;
		Date writedate;
		int readed;

		ResultSet rs = null ;
		String sql = "SELECT * "
				+ "FROM  "
				+ "( "
				+ "SELECT ROWNUM no, t.*  "
				+ "FROM "
				+ "( "
				+ "SELECT seq, title, writer, email, writedate, readed "
				+ "FROM TBL_CSTVSBOARD  "
				+ "ORDER BY seq DESC "
				+ ") t  "
				+ ") b "
				+ "WHERE no BETWEEN ? AND ?";
		try {
			int start = (currentPage - 1) * numberPerPage + 1 ;
			int end = start + numberPerPage - 1 ; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			if ( rs.next()) {
				boardList = new ArrayList();
				do {
					seq = rs.getLong("seq");
					title = rs.getString("title");
					writer = rs.getString("writer");
					email = rs.getString("email");
					writedate = rs.getDate("writedate");
					readed = rs.getInt("readed");
					BoardDTO dto = new BoardDTO().builder()
							.seq(seq)
							.title(title)
							.writer(writer)
							.email(email)
							.writedate(writedate)
							.readed(readed)
							.build();
					boardList.add(dto);
				} while ( rs.next());
			}     
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return boardList;
	}


	@Override
	public int getTotalRecords() throws SQLException {
		
		int totalRecords = 0;
		String sql = "SELECT COUNT(*) FROM tbl_cstvsboard";
		this.pstmt = conn.prepareStatement(sql);
		this.rs =  this.pstmt.executeQuery();
		if ( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		
		return totalRecords;
	}


	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		int totalPages = 0;
		String sql = "SELECT CEIL(COUNT(*)/?) FROM tbl_cstvsboard";
		this.pstmt = conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		this.rs =  this.pstmt.executeQuery();
		if ( this.rs.next() ) totalPages = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		
		return totalPages;
	}
	
	public int getTotalPages(int numberPerPage, int searchCondition, String searchWord) throws SQLException {
		int totalPages = 0;
		String sql = "SELECT CEIL(COUNT(*)/?) cnt "
				+ "FROM TBL_CSTVSBOARD ";
		// WHERE 검색조건 START
		switch ( searchCondition) {
		case 1:  // 제목
			sql += " WHERE REGEXP_LIKE( title, ?, 'i') ";
			break;
		case 2: // 내용
			sql += " WHERE REGEXP_LIKE( content, ?, 'i') ";
			break;
		case 3: // 작성자
			sql += " WHERE REGEXP_LIKE( writer, ?, 'i') ";
			break;         
		case 4: // 제목 + 내용 
			sql += " WHERE REGEXP_LIKE( title, ?, 'i') OR  REGEXP_LIKE( content, ?, 'i') ";
			break;
		} // switch
		// END
		this.pstmt = conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		
		if (searchCondition != 4) {
			pstmt.setString(2, searchWord);
		} else {
			pstmt.setString(2, searchWord);
			pstmt.setString(3, searchWord);
		}
		this.rs =  this.pstmt.executeQuery();
		if ( this.rs.next() ) totalPages = rs.getInt("cnt");
		this.rs.close();
		this.pstmt.close();
		
		return totalPages;
	}


	@Override
	public String getOriginalPwd(int seq) throws SQLException {
		String originalPwd = null;
		String sql = "SELECT pwd "
				+ " FROM tbl_cstvsboard "
				+ " WHERE seq = ? ";
		pstmt = this.conn.prepareStatement(sql);
		pstmt.setInt(1, seq);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			originalPwd = rs.getString("pwd");
		}
		pstmt.close();
		rs.close();
		return originalPwd;
	
	}
	
	

}
