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
		
		String sql = " select po.id optionid , pi.imgurl , b.brandname as brand , ss.sellername as seller , p.pdname  , po.optiondesc , po.optionprice as price\r\n"
				+ ",so.defaultshippingfee as deshipfee , sp.spclDscnRt as specialp  from product p ,productimg pi , brand b ,sellerstore ss ,productoption po ,\r\n"
				+ "shippingoption so ,specialprice sp where po.id = ? and p.id=pi.productid and p.brandid = b.id and ss.id = p.sellerstoreid and po.productid=p.id and \r\n"
				+ "so.id = p.shippingoptionid and sp.id=p.specialpriceid   " ; 
		
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
						seller(seller).pdname(pdname).optiondesc(optiondesc).price(price).deshipfee(deshipfee).specialp(specialp).quantity(quantity).optionid(optionid).build();
				
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
		String sql = "select  addressNick , name , phonenum ,roadaddress , email ,p.id as cardnumber , p.cpoint from member m , "
				+ " shippingplaceinformation spi , points p where m.id = ? and spi.memid = m.id and spi.defaultshipping='이번만배송지' and p.id2 = m.id " ;
		String name =null; 
		String phonenum=null ; 
		String roadaddress=null;
		String email=null;
		String cardnumber=null;
		String addressNick =null;
		int cpoint = 0;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				name = rs.getString("name");
				phonenum = rs.getString("phonenum");
				roadaddress = rs.getString("roadaddress");
				email = rs.getString("email");
				cardnumber = rs.getString("cardnumber");
				cpoint = rs.getInt("cpoint");
				addressNick = rs.getString("addressNick");
			}
			UserDTO dto = new UserDTO(name, phonenum, roadaddress, email, addressNick ,cardnumber, cpoint);
			al.add(dto);
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
		return al;
	}

	@Override
	public ArrayList<CouponDTO> mycouponview(String id) {
		ArrayList<CouponDTO> al = new ArrayList<CouponDTO>();
		String sql = " select ctype,maxamount,minamount,discountrate , cr.cnumber from couponrecord cr , coupon c  where cr.memid = ? and cr.cnumber = c.id " ;
		String ctype ; 
		int maxamount ; 
		int minamount ; 
		int discountrate ; 
		int cnumber ;
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
					cnumber = rs.getInt("cnumber");
					CouponDTO dto = CouponDTO.builder().ctype(ctype).maxamount(maxamount).minamount(minamount).discountrate(discountrate).cnumber(cnumber).build();
					al.add(dto);
				} while (rs.next());
				
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
		return al;
	}

	@Override
	public int insertpayre( int points, int orderprice, String userid) {
		int result = 0 ;
		String sql = " insert into payrecord values (payrecord_seq.nextval , sysdate , ? , 0 , ? ,'토스', null ,  ? , 1 )  " ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, orderprice);
			pst.setInt(2, points);
			pst.setString(3, userid);
			result = pst.executeUpdate();
			
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
	public int resultprice(int optionid, int quantitys, int usecoupons) {
		int resultprice = 0 ;
		String sql = " with discount as (\r\n"
				+ "    select discountrate \r\n"
				+ "    from coupon\r\n"
				+ "    where id = ?\r\n"
				+ ")\r\n"
				+ "select ( optionprice- optionprice * d.discountrate/100) *? resultprice from productoption po ,discount d where po.id = ?" ;
			
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, usecoupons);
			pst.setInt(2, quantitys);
			pst.setInt(3, optionid);
			rs = pst.executeQuery();
			if (rs.next()) {
				resultprice = rs.getInt("resultprice");
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
		
		return resultprice;
	}

	@Override
	public int deletecoupon(String userid, int usecoupons) {
		String sql = " delete couponrecord where memid = ? and cnumber = ?  ";
		int result = 0 ;
		try {
			
			pst = conn.prepareStatement(sql);
			pst.setString(1, userid);
			pst.setInt(2, usecoupons);
			
			result = pst.executeUpdate();
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
	public int updatepointre(String userid, int points) {
		String sql = " insert into pointrecord (\r\n"
				+ "select pointrecord_seq.nextval , id , ?, 1 , payrecord_seq.CURRVAL \r\n"
				+ "from points\r\n"
				+ " where id2 = ?) " ;
		int result = 0 ; 
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, points);
			pst.setString(2, userid);
			result = pst.executeUpdate();
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
	public int updatepoint(String userid, int points) {
		String sql = " update points set cpoint = cpoint - ? where id2 = ?  " ;
		int result = 0 ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, points);
			pst.setString(2, userid);
			result =pst.executeUpdate();
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
	public int insertpaydetail(int optionid, int couponid, int quantitys) {
		String sql = " insert into paydetail values ( paydetail_seq.nextval , ? ,  payrecord_seq.CURRVAL , ? , ? ) " ;
		int result = 0 ;
		try {
			pst =conn.prepareStatement(sql);
			pst.setInt(1, quantitys);
			pst.setInt(2, optionid);
			pst.setInt(3, couponid);
			result = pst.executeUpdate() ;
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

	

}
