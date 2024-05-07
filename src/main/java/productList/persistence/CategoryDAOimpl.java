package productList.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	public ArrayList<CategoryDTO> select(String id) throws SQLException {
		ArrayList<CategoryDTO> list = null;

		        
		String majorCateName; 
		String middleCateName;
		String subCateName;   
		String miniCateName;  

		String sql = " SELECT * FROM category WHERE id = ? ";

		try {
			pstmt = conn.prepareStatement(sql); 
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<>();
				do {

					id = rs.getString(1);    
					majorCateName = rs.getString(2);    
					middleCateName = rs.getString(3);    
					subCateName = rs.getString(4);    
					miniCateName = rs.getString(5);    
					      
					
					CategoryDTO dto = CategoryDTO.builder()
							.id(id)
							.majorCateName(majorCateName)
							.middleCateName(middleCateName)
							.subCateName(subCateName)
							.miniCateName(miniCateName)
							.build();
					list.add(dto);
				} while (rs.next());

			} // if 

		} catch (SQLException e) { 
			e.printStackTrace();
		} catch( Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}			
		}

		return list;
	}


	
	//선택된 카테고리에 해당하는 상품 수 돌려주는 메서드
	@Override
	public int getTotalProduct(String id) throws SQLException {
		int totalProduct = 0;		
		String sql = "SELECT COUNT(*) FROM product WHERE categoryId = ?";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setString(1, sql);
		this.rs =  this.pstmt.executeQuery();		
		if( this.rs.next() ) totalProduct = rs.getInt(1);		
		this.rs.close();
		this.pstmt.close();				
		return totalProduct;
	}
	
	
	

}
