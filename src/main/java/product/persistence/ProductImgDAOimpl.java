package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import product.domain.ProductImgDTO;

public class ProductImgDAOimpl implements ProductImgDAO{
	
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs  =null;
	
	
	
	public ProductImgDAOimpl(Connection conn) {	
		this.conn = conn;
	}



	public Connection getConn() {
		return conn;
	}



	public void setConn(Connection conn) {
		this.conn = conn;
	}



	@Override
	public List<ProductImgDTO> getImg(long productId) throws SQLException {
		List<ProductImgDTO> images = new ArrayList<ProductImgDTO>();

		String sql  = " SELECT * "
				+ " FROM productimg "
				+ " WHERE productid = ?  ";
		System.out.println("pdImgDAOimpl");
		try {
			pstmt = conn.prepareStatement(sql);
			
			System.out.println(productId);
			pstmt.setLong(1, productId);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				do {
					
						ProductImgDTO image = new ProductImgDTO().builder()
											.id(rs.getInt("id"))
											.productId(rs.getLong("productId"))
											.imgUrl(rs.getString("imgUrl"))
											.imgContent(rs.getString("imgContent"))
											.build();
						
									images.add(image);
					
				} while (rs.next());
			}else {
				System.out.println("없음");
			}
		
		} catch (SQLException e) {	
			e.printStackTrace();
		}finally {
			try {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
				JdbcUtil.close(conn);
			} catch (Exception e2) {
				System.out.println("닫기실패");
			}
		}
		
		return images;
	}
	
	
	
	
}
