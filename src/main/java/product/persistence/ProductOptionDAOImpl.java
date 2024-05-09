package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import product.domain.ProductDTO;
import product.domain.ProductOptionDTO;

public class ProductOptionDAOImpl implements ProductOptionDAO{

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public ProductOptionDAOImpl(Connection conn) {
		this.conn = conn;
	}
	@Override
	public List<ProductOptionDTO> view(long id) throws SQLException {
		ProductOptionDTO dto = null;
		List<ProductOptionDTO> options = new ArrayList<ProductOptionDTO>();

	    long productId ;
	    String optionName;
	    String optionDesc;
	    String optionRef;
	    int optionPrice;
	    int optionStrock;
		   
		   
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   
		   String sql = " SELECT ID, PRODUCTID, OPTIONNAME, OPTIONDESC, OPTIONREF, OPTIONPRICE, OPTIONSTOCK "
		   		+ " FROM productoption "
		   		+ " WHERE productid = ? ";
		   try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, id);
			rs=  pstmt.executeQuery();
			
			if (rs.next()) {
				do {
					id = rs.getLong(1);
					productId = rs.getLong(2);
					optionName = rs.getString(3);
					optionDesc = rs.getString(4);
					optionRef = rs.getString(5);
					optionPrice = rs.getInt(6);
					optionStrock =rs.getInt(7);
					
					dto= new ProductOptionDTO()
							.builder()
							.id(id)
							.productId(productId)
							.optionName(optionName)
							.optionDesc(optionDesc)
							.optionRef(optionRef)
							.optionPrice(optionPrice)
							.optionStrock(optionStrock)
							.build();
					
					options.add(dto);
				} while (rs.next());
				
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			
			try {
				JdbcUtil.close(rs); 
				JdbcUtil.close(pstmt); 
				JdbcUtil.close(conn);
				
			} catch (Exception e2) {
				e2.printStackTrace();
				System.out.println("productOptionImp close error");
			}		
		}
		return options;
	}
	
	
	
	
	

}
