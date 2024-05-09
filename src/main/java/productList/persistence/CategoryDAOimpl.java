package productList.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import member.domain.BoardDTO;
import product.domain.ProductDTO;
import productList.domain.CategoryDTO;

public class CategoryDAOimpl implements CategoryDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 1. Setter를 통한 DI
	public void setConn(Connection conn) {
		this.conn = conn;
	}


	// 2. 생성자를 통한 DI
	public CategoryDAOimpl(Connection conn) {
		this.conn = conn;
	}

	// 2 - 2 . Getter
	public Connection getConn() {
		return this.conn;
		
		
		
	}
	@Override
	public ArrayList<ProductDTO> select(int currentPage, int numberPerPage) throws SQLException {
		ArrayList<ProductDTO> productList = null ; 
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
				productList = new ArrayList();
				do {
					seq = rs.getLong("seq");
					title = rs.getString("title");
					writer = rs.getString("writer");
					email = rs.getString("email");
					writedate = rs.getDate("writedate");
					readed = rs.getInt("readed");
					ProductDTO dto = new ProductDTO().builder()
							.seq(seq)
							.title(title)
							.writer(writer)
							.email(email)
							.writedate(writedate)
							.readed(readed)
							.build();
					productList.add(dto);
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
		return productList;
	}


	@Override
	public int getTotalPages(int numberPerPage) throws SQLException {
		int totalPages = 0;
		String sql = "SELECT CEIL(COUNT(*)/?) FROM product";
		this.pstmt = conn.prepareStatement(sql);
		this.pstmt.setInt(1, numberPerPage);
		this.rs =  this.pstmt.executeQuery();
		if ( this.rs.next() ) totalPages = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		
		return totalPages;
	}


	@Override
	public int getTotalRecords() throws SQLException {
		int totalRecords = 0;
		String sql = "SELECT COUNT(*) FROM product";
		this.pstmt = conn.prepareStatement(sql);
		this.rs =  this.pstmt.executeQuery();
		if ( this.rs.next() ) totalRecords = rs.getInt(1);
		this.rs.close();
		this.pstmt.close();
		
		return totalRecords;
	}


}
