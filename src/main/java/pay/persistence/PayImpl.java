package pay.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pay.domain.CartDTO;
import pay.domain.CouponDTO;
import pay.domain.EnrollDTO;
import pay.domain.OrderedDTO;
import pay.domain.ProductDTO;
import pay.domain.ShippingDTO;
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
	public ArrayList<UserDTO> onceuserinfo(String id) {
		ArrayList<UserDTO> al = new ArrayList<UserDTO>();
		String sql = "select spi.id shipnum, addressNick , name , phonenum ,roadaddress , email ,p.id as cardnumber , p.cpoint from member m , "
				+ " shippingplaceinformation spi , points p where m.id = ? and spi.memid = m.id and spi.defaultshipping='이번만배송지' and p.id2 = m.id " ;
		int shipnum = 0 ;
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
				shipnum =rs.getInt("shipnum");
				name = rs.getString("name");
				phonenum = rs.getString("phonenum");
				roadaddress = rs.getString("roadaddress");
				email = rs.getString("email");
				cardnumber = rs.getString("cardnumber");
				cpoint = rs.getInt("cpoint");
				addressNick = rs.getString("addressNick");
			}
			UserDTO dto = new UserDTO(shipnum,name, phonenum, roadaddress, email, addressNick ,cardnumber, cpoint);
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
				
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public ArrayList<ShippingDTO> getdefaultshipinfo(String id) {
		String sql = " select id id2,addressNick as addrnick , receiveMem as name , tel, postNum postnum, roadaddress roadaddr , jibunaddress jiaddr, detailaddress detailaddr from shippingplaceinformation where memid = ? and defaultshipping='기본배송지' ";
		 ArrayList<ShippingDTO> al = new ArrayList<>();
		  int id2 ;
		 String addrnick ;
			String name ; 
			String postnum;
			String roadaddr;
			String jiaddr;
			String detailaddr ;
			String tel;
		 try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					id2 = rs.getInt("id2");
					addrnick = rs.getString("addrnick");
					name = rs.getString("name");
					postnum = rs.getString("postnum");
					roadaddr = rs.getString("roadaddr");
					jiaddr = rs.getString("jiaddr");
					detailaddr = rs.getString("detailaddr");
					tel = rs.getString("tel");
					
					ShippingDTO dto = new ShippingDTO(id2,addrnick, name, postnum, roadaddr, jiaddr, detailaddr, tel);
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
	public ArrayList<ShippingDTO> getothershipinfo(String id) {
		String sql = " select id id2 ,addressNick as addrnick , receiveMem as name , tel, postNum postnum, roadaddress roadaddr , jibunaddress jiaddr, detailaddress detailaddr from shippingplaceinformation where memid = ? and defaultshipping !='기본배송지' ";
		 ArrayList<ShippingDTO> al = new ArrayList<>();
		 int id2 ;
		 String addrnick ;
			String name ; 
			String postnum;
			String roadaddr;
			String jiaddr;
			String detailaddr ;
			String tel;
		 try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					id2 = rs.getInt("id2");
					addrnick = rs.getString("addrnick");
					name = rs.getString("name");
					postnum = rs.getString("postnum");
					roadaddr = rs.getString("roadaddr");
					jiaddr = rs.getString("jiaddr");
					detailaddr = rs.getString("detailaddr");
					tel = rs.getString("tel");
					
					ShippingDTO dto = new ShippingDTO(id2,addrnick, name, postnum, roadaddr, jiaddr, detailaddr, tel);
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
	public ArrayList<UserDTO> defaulutuserinfo(String id) {
		ArrayList<UserDTO> al = new ArrayList<UserDTO>();
		String sql = "select  spi.id shipnum ,addressNick , name , phonenum ,roadaddress , email ,p.id as cardnumber , p.cpoint from member m , "
				+ " shippingplaceinformation spi , points p where m.id = ? and spi.memid = m.id and spi.defaultshipping='기본배송지' and p.id2 = m.id " ;
		int shipnum =0;
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
				shipnum = rs.getInt("shipnum");
				name = rs.getString("name");
				phonenum = rs.getString("phonenum");
				roadaddress = rs.getString("roadaddress");
				email = rs.getString("email");
				cardnumber = rs.getString("cardnumber");
				cpoint = rs.getInt("cpoint");
				addressNick = rs.getString("addressNick");
			}
			UserDTO dto = new UserDTO(shipnum,name, phonenum, roadaddress, email, addressNick ,cardnumber, cpoint);
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
	public int hasonceship(String id) {
		int result = 0 ;
		String sql = " select count(*) result from shippingplaceinformation where  defaultshipping='이번만배송지' and memid = ?  " ;
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rs= pst.executeQuery();
			
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
	public int insertshipinfo(int shipnum , String shipmsg) {
		int result = 0 ;
		String sql = " insert into shippinginformation values ( seq_shippingid.nextval , payrecord_seq.currval ,  ? , null , '상품준비중' , ? , null , null , null , null )  " ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, shipnum);
			pst.setString(2, shipmsg);
			result = pst.executeUpdate();
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
		return result;
	}

	@Override
	public ArrayList<OrderedDTO> selectorderinfo(String id) {
		ArrayList<OrderedDTO> al = new ArrayList<OrderedDTO>();
		String sql = " with newordernum as (\r\n"
				+ "select newordernum\r\n"
				+ " from (\r\n"
				+ "    select id newordernum\r\n"
				+ "    from payrecord \r\n"
				+ "    where memid = ? \r\n"
				+ "    order by id desc\r\n"
				+ "    )\r\n"
				+ "    where rownum = 1\r\n"
				+ ")\r\n"
				+ "select m.name , p.orderdate , p.id ordernum , spi.id , spi.receivemem ordername , spi.tel phonenum , spi.addressnick addrnick , spi.roadaddress roadaddr ,spi.detailaddress detailaddr , p.orderamount ,so.defaultShippingFee shipamount, pr.points , p.points usepoint \r\n"
				+ "from member m , payrecord p , newordernum no , shippinginformation si  ,shippingPlaceInformation spi ,shippingoption so ,product pd ,productoption pop ,paydetail pdt ,pointrecord pr \r\n"
				+ "where m.id = ?  and si.orderid = no.newordernum and no.newordernum = p.id and  m.id = p.memid and spi.id = si.shippingplaceid and so.id = pd.shippingoptionid and  pop.productid = pd.id and pop.id = pdt.id3 and pdt.id2 = p.id and pr.id2 = p.id and pr.classify = 2 \r\n"
				+ "  " ;
		 String name ; 
		 Date orderdate;
		 int ordernum ; 
		 String ordername ;
		 String phonenum ; 
		 String addrnick;
		 String roadaddr ; 
		 String detailaddr ;
		 int orderamount ;
		 int shipamount  ;
		 int point;
		 int usepoint;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				name = rs.getString("name");
				orderdate = rs.getTimestamp("orderdate");
				ordernum = rs.getInt("ordernum");
				ordername = rs.getString("ordername");
				phonenum = rs.getString("phonenum");
				addrnick = rs.getString("addrnick");
				roadaddr = rs.getString("roadaddr");
				detailaddr = rs.getString("detailaddr");
				orderamount = rs.getInt("orderamount");
				shipamount = rs.getInt("shipamount");
				point = rs.getInt("points");
				usepoint = rs.getInt("usepoint");
				OrderedDTO dto = new OrderedDTO(name, orderdate, ordernum, ordername, phonenum, addrnick, roadaddr, detailaddr, orderamount, shipamount, point ,usepoint);
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
		
		
		
		
		return al;
		
		
	}

	@Override
	public int insertpointrecord(String id, int points) {
		String sql = " insert into pointrecord ( \r\n"
				+ "select pointrecord_seq.nextval , id , ? ,2 ,payrecord_seq.currval\r\n"
				+ "from points\r\n"
				+ "where id2 = ? ) ";
		int result = 0 ;
		try {
			pst =conn.prepareStatement(sql);
			pst.setInt(1, points);
			pst.setString(2, id);
			result = pst.executeUpdate();
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
		return result;
	}

	@Override
	public int updatepoint2(String userid, int points) {
		String sql = " update points set cpoint = cpoint + ? where id2 = ?  " ;
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
				
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public int selectshipfee(int optionid) {
		String sql = " select defaultshippingfee dsf from shippingoption s , product p , productoption po where s.id = p.shippingOptionId and po.productid = p.id and po.id=? " ;
		int result = 0 ;
		try {
			pst =conn.prepareStatement(sql);
			pst.setInt(1, optionid);
			rs =pst.executeQuery();
			if (rs.next()) {
				result = rs.getInt("dsf");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<CartDTO> selectcartinfo(String id) {
		String sql = "  select sc.id2 optionid , sc.scount , pi.imgurl ,ss.sellername, b.brandname , po.optionname , po.optionprice price, so.defaultshippingfee shipfee\r\n"
				+ " \r\n"
				+ " from shoppingcart sc , productimg pi , product p, brand b , sellerstore ss , productoption po , shippingoption so\r\n"
				+ " where sc.memid = ? and sc.id2 = po.id and pi.productid = p.id and p.id = po.productid and b.id = p.brandid and ss.id = p.sellerstoreid and so.id = p.shippingoptionid  \r\n"
				+ "	  " ;
		ArrayList<CartDTO> al = new ArrayList<CartDTO>();
		int optionid;
		int scount ;
		String imgurl ;
		String sellername ;
		String brandname ;
		String optionname;
		int price;
		int shipfee ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					optionid = rs.getInt("optionid");
					imgurl = rs.getString("imgurl");
					sellername = rs.getString("sellername");
					brandname = rs.getString("brandname");
					optionname = rs.getString("optionname");
					price = rs.getInt("price");
					shipfee = rs.getInt("shipfee");
					scount = rs.getInt("scount");
					CartDTO dto = CartDTO.builder().optionid(optionid).imgurl(imgurl).seller(sellername).brand(brandname).optionname(optionname).price(price).shipfee(shipfee).scount(scount).build();
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
	public int deletecartinfo(String id, int optionid) {
		String sql = " delete shoppingcart \r\n"
				+ "  where memid = ? and id2= ? " ;
		int result = 0 ;
		try {
			pst =conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, optionid);
			result = pst.executeUpdate();
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
		return result;
	}

	@Override
	public int insertcartinfo(String id, int optionid , int quantity) {
		String sql = "  insert into shoppingcart values ( shoppingcart_seq.nextval , ? , sysdate , ? , ? ) " ;
		int result = 0 ; 
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setInt(2, optionid);
			pst.setInt(3, quantity);
			result = pst.executeUpdate();
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
		return result;
	}

	@Override
	public ArrayList<EnrollDTO> selectcateinfo() {
		String sql = " select id cateid,majorcatename cate1 ,middlecatename cate2,subcatename cate3,minicatename cate4 from category ";
		ArrayList<EnrollDTO> al = new ArrayList<>() ;
		int cateid;
		String cate1;
		String cate2;
		String cate3;
		String cate4;
		try {
			pst =conn.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
				cateid = rs.getInt("cateid");
				cate1 = rs.getString("cate1");
				cate2 = rs.getString("cate2");
				cate3 = rs.getString("cate3");
				cate4 = rs.getString("cate4");
				
				EnrollDTO dto = EnrollDTO.builder().cateid(cateid).cate1(cate1).cate2(cate2).cate3(cate3).cate4(cate4).build();
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
	public ArrayList<EnrollDTO> selectbrandinfo() {
		String sql = " select id brandid , brandname from brand " ;
		ArrayList<EnrollDTO> al = new ArrayList<>();
		int brandid;
		String brandname;
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					brandid = rs.getInt("brandid");
					brandname = rs.getString("brandname");
					
					EnrollDTO dto = EnrollDTO.builder().brandid(brandid).brandname(brandname).build();
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
	public ArrayList<EnrollDTO> selectsellerinfo() {
		String sql = " select id sellerid, sellername from sellerstore " ;
		ArrayList<EnrollDTO> al = new ArrayList<>();
		int sellerid;
		String sellername;
		try {
			pst =conn.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					sellerid = rs.getInt("sellerid");
					sellername = rs.getString("sellername");
					EnrollDTO dto = EnrollDTO.builder().sellerid(sellerid).sellername(sellername).build();
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
	public ArrayList<EnrollDTO> selectspecialpinfo() {
		String sql = " select id specialpid , spclnm ,  spclstrdt , spclprcendt ,spcldscnrt from specialprice ";
		ArrayList<EnrollDTO> al = new ArrayList<>();
		int specialpid;
		String spclnm;
		Date spclstrdt;
		Date spclprcendt;
		int spcldscnrt;
		
		try {
			pst =conn.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					specialpid = rs.getInt("specialpid");
					spclnm = rs.getString("spclnm");
					spclstrdt = rs.getDate("spclstrdt");
					spclprcendt = rs.getDate("spclprcendt");
					spcldscnrt = rs.getInt("spcldscnrt");
					EnrollDTO dto = EnrollDTO.builder().specialpid(specialpid).spclnm(spclnm).spclstrdt(spclstrdt).spclprcendt(spclprcendt).spcldscnrt(spcldscnrt).build();
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
	public ArrayList<EnrollDTO> selectshipinfo() {
		String sql = " select id shipid , shippingOptionName sname ,  defaultShippingFee dfee from shippingoption ";
		ArrayList<EnrollDTO> al = new ArrayList<>();
		int shipid;
		String sname ;
		String dfee ;
		
		try {
			pst =conn.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				do {
					shipid = rs.getInt("shipid");
					sname = rs.getString("sname");
					dfee = rs.getString("dfee");
				
					EnrollDTO dto = EnrollDTO.builder().shipid(shipid).sname(sname).dfee(dfee).build();
							
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
	public int insertproducttable(int cateid, int brandid, int sellerid, int spp, int shipo, String productn,
			String productex) {
		String sql = " insert into product values ( product_id_seq.nextval , ? , ? , ? , ? , ? , ? , ? , sysdate ) ";
		int result = 0 ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, cateid);
			pst.setInt(2, spp);
			pst.setInt(3, shipo);
			pst.setInt(4, sellerid);
			pst.setInt(5, brandid);
			pst.setString(6, productn);
			pst.setString(7, productex);
			result = pst.executeUpdate();
			
			
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
		
		return result;
	}

	@Override
	public int insertproductoption(String optionname, String optiondes, int refoption, int optionprice,
			int optionstock) {
		String sql = " insert into productoption values ( productoption_id_seq.nextval , product_id_seq.currval , ? , ? , ?, ? ,? )  "; ;
		int result = 0 ;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, optionname);
			pst.setString(2, optiondes);
			pst.setInt(3, refoption);
			pst.setInt(4 , optionprice);
			pst.setInt(5, optionstock);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int selectrefoptionid(String optionname) {
		String sql = " select id optionid from productoption where optionname = ? and productid =  product_id_seq.currval " ;
		int optionid = 0 ;
		try {
			pst =conn.prepareStatement(sql);
			pst.setString(1, optionname);
			rs = pst.executeQuery();
			if (rs.next()) {
				optionid = rs.getInt("optionid");
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
		return optionid;
	}

	





	

}
