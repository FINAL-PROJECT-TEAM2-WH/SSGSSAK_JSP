package productList.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import product.domain.ProductDTO;
import productList.domain.ProdCateDTO;

public class CategoryDAOimpl implements CategoryDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public CategoryDAOimpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public ArrayList<ProdCateDTO> viewTopCate(String  id) throws SQLException {

		ArrayList<ProdCateDTO> cdtoList = null ; 
		
		   
		   String categoryId;
		   String majorCateName; 
		   String middleCateName;
		   String subCateName;   
		   String miniCateName;  
		  
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   
		   String sql = " SELECT c.id AS categoryId, c.majorCateName, c.middleCateName, c.subCateName, c.miniCateName FROM product p JOIN category c ON p.categoryId = c.id WHERE p.id= ? ";
		   try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=  pstmt.executeQuery();
			
			if (rs.next()) {
				cdtoList = new ArrayList();
				do {
					id = rs.getString(1);
					categoryId = rs.getString(2);
					majorCateName = rs.getString(3);
					middleCateName = rs.getString(4);
					subCateName = rs.getString(5);
					miniCateName = rs.getString(6);
					

					ProdCateDTO cdto = new ProdCateDTO()
							.builder()
							.id(categoryId)
							.majorCateName(majorCateName)
							.middleCateName(middleCateName)
							.subCateName(subCateName)
							.miniCateName(miniCateName)
							.build();
					cdtoList.add(cdto);
				} while (rs.next());
				
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			
			 JdbcUtil.close(rs); 
			 JdbcUtil.close(pstmt); 
			 JdbcUtil.close(conn);
		
			
		}
		   
			return cdtoList;
	}


}
