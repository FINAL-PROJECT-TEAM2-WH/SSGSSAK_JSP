package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	public List<ProductImgDTO> getImg(String productId) throws SQLException {
		List<ProductImgDTO> images = new ArrayList<ProductImgDTO>();
		//썸네일 가져오는
		String sql  = " SELECT * "
				+ " FROM productimg "
				+ " WHERE productid = ? AND imgcontent = 'thumbnail' ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				ProductImgDTO image = new ProductImgDTO().builder()
									.id(rs.getString("id"))
									.productId(rs.getString("productImg"))
									.imgUrl(rs.getString("imgUrl"))
									.imgContent(rs.getString("imgContent"))
									.build();
							images.add(image);
				}
		} catch (SQLException e) {	
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				
			} catch (Exception e2) {
				System.out.println("닫기실패");
			}
		}
		
		return images;
	}

}
