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
import pay.domain.CouponDTO;
import pay.domain.ProductDTO;
import pay.domain.UserDTO;
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
	public ProductDTO viewproduct(int optionid,int count) {
		String sql = "  select p.id ,c.majorcatename,middlecatename,subcatename,minicatename,\r\n"
				+ "    specialpriceid, shippingoptionid, sellerstoreid, brandid, pdname, price ,\r\n"
				+ "    sale ,pcontent , updateday , stock from product p , category c ,shippingoption s ,sellerstore ss ,brand b\r\n"
				+ "    where p.id = '1000026532717' and p.categoryid = c.id and p.shippingoptionid = s.id and ss.id=p.sellerstoreid and b.id = p.brandid " ; 
		
		
		String imgurl ; 
		String brand ; 
		String seller ; 
		String pdname ; 
		String optiondesc;
		int price ; 
		int deshipfee ;
		int specialp;
		int quantity = count;
		ProductDTO dto = null ;
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, optionid);
			rs = pst.executeQuery();
			if (rs.next()) {
				
					
				imgurl = rs.getString("imgurl");
				brand = rs.getString("brand");
				seller = rs.getString("seller");
				pdname = rs.getString("pdname");
				optiondesc = rs.getString("optiondesc");
				price = rs.getInt("price");
				deshipfee = rs.getInt("deshipfee");
				specialp = rs.getInt("specialp");
				dto = ProductDTO.builder().imgurl(imgurl).brand(brand).
						seller(seller).pdname(pdname).optiondesc(optiondesc).price(price).deshipfee(deshipfee).specialp(specialp).quantity(quantity).build();
				
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
		return dto ;
		
		
		
	}

	@Override
	public ArrayList<UserDTO> userinfo(String id) {
		ArrayList<UserDTO> al = new ArrayList<UserDTO>();
		String sql = " " ; 
		String name =null; 
		String phonenum=null ; 
		String roadaddress=null;
		String email=null;
		
		String cardnumber=null;
		int cpoint = 0;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				name = rs.getString(name);
				phonenum = rs.getString(phonenum);
				roadaddress = rs.getString(roadaddress);
				email = rs.getString(email);
				cardnumber = rs.getString(cardnumber);
				cpoint = rs.getInt(cpoint);
			}
			UserDTO dto = new UserDTO(name, phonenum, roadaddress, email, cardnumber, cpoint);
			al.add(dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}

	@Override
	public ArrayList<CouponDTO> mycouponview(String id) {
		ArrayList<CouponDTO> al = new ArrayList<CouponDTO>();
		String sql = " " ;
		String ctype ; 
		int maxamount ; 
		int minamount ; 
		int discountrate ; 
		
		
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					ctype = rs.getString("ctype");
					maxamount = rs.getInt("maxamount");
					minamount = rs.getInt("minamount");
					discountrate = rs.getInt("discountrate");
					CouponDTO dto = CouponDTO.builder().ctype(ctype).maxamount(maxamount).minamount(minamount).discountrate(discountrate).build();
					al.add(dto);
				} while (rs.next());
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;
	}

	

}
