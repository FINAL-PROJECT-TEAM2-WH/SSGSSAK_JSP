package pay.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pay.domain.ProductDTO;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class PayImpl implements PayDAO{
	private Connection conn = null ;
	private PreparedStatement pst = null ;
	private ResultSet rs = null ;
	
	public PayImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	@Override
	public int issue(String id, int couponnum) {
		String sql = " insert into couponrecord values (couponrecord_seq.nextval , ? , ? , sysdate ) " ;
		int a = 0 ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, couponnum);
			a = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return a;
	}

	@Override
	public int isduplicoupon(String id, int couponnum) {
		String sql = " select count(*) result from couponrecord where memid= ? and cnumber= ? ";
		int result = 0 ; 
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, couponnum);
			rs = pst.executeQuery();
			if (rs.next()) {
				result = rs.getInt("result");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return result;
	}

	@Override
	public ArrayList<ProductDTO> viewpay(String productid, int option,int count) {
		String sql = "  select p.id ,c.majorcatename,middlecatename,subcatename,minicatename,\r\n"
				+ "    specialpriceid, shippingoptionid, sellerstoreid, brandid, pdname, price ,\r\n"
				+ "    sale ,pcontent , updateday , stock from product p , category c ,shippingoption s ,sellerstore ss ,brand b\r\n"
				+ "    where p.id = '1000026532717' and p.categoryid = c.id and p.shippingoptionid = s.id and ss.id=p.sellerstoreid and b.id = p.brandid " ; 
		ArrayList<ProductDTO> al = new ArrayList<ProductDTO>();
		String name ; 
		String phonenum ; 
		String roadaddress;
		String email;
		
		String imgurl ; 
		String brand ; 
		String seller ; 
		String pdname ; 
		String optiondesc;
		int price ; 
		int deshipfee ;
		
		int specialid;
		int cpoint;
		String cardnumber;
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, productid);
			pst.setInt(2, option);
			rs = pst.executeQuery();
			if (rs.next()) {
				name = rs.getString("name");
				phonenum = rs.getString("phonenum");
				roadaddress = rs.getString("roadaddress");
				email = rs.getString("email");
				imgurl = rs.getString("imgurl");
				brand = rs.getString("brand");
				seller = rs.getString("seller");
				pdname = rs.getString("pdname");
				optiondesc = rs.getString("optiondesc");
				price = rs.getInt("price");
				deshipfee = rs.getInt("deshipfee");
				specialid = rs.getInt("specialid");
				cpoint=rs.getInt("cpoint");
				cardnumber = rs.getString("cardnumber");
				ProductDTO dto = ProductDTO.builder().name(name).phonenum(phonenum).
						roadaddress(roadaddress).email(email).imgurl(imgurl).brand(brand).
						seller(seller).pdname(pdname).optiondesc(optiondesc).price(price).deshipfee(deshipfee).specialid(specialid).cpoint(cpoint).phonenum(phonenum).build();
				al.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return al ;
		
		
		
	}

	

}
