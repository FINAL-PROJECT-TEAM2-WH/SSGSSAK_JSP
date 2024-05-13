package pay.persistence;

import java.util.ArrayList;

import pay.domain.CouponDTO;
import pay.domain.OrderedDTO;
import pay.domain.ProductDTO;
import pay.domain.ShippingDTO;
import pay.domain.UserDTO;

public interface PayDAO {
	public abstract int issue(String id , int couponnum) ;
	public abstract int isduplicoupon(String id , int couponnum) ;
	public abstract ProductDTO viewproduct(int optionid ,int count) ;
	public abstract ArrayList<UserDTO> onceuserinfo(String id) ;
	public abstract int hasonceship(String id) ;
	public abstract ArrayList<UserDTO> defaulutuserinfo(String id) ;
	public abstract ArrayList<CouponDTO> mycouponview(String id) ;
	public abstract int insertpayre(int points ,int usecoupons,String userid) ;
	public abstract int resultprice(int optionid,int quantitys,int usecoupons) ;
	public abstract int deletecoupon(String userid , int usecoupons) ;
	public abstract int updatepointre(String userid , int points) ;
	public abstract int updatepoint(String userid , int points) ;
	public abstract int updatepoint2(String userid , int points) ;
	public abstract int insertpaydetail(int optionid, int couponid , int quantitys) ;
	public abstract ArrayList<ShippingDTO> getdefaultshipinfo(String id) ;
	public abstract ArrayList<ShippingDTO> getothershipinfo(String id) ;
	public abstract int insertshipinfo( int shipnum , String shipmsg) ;
	public abstract ArrayList<OrderedDTO> selectorderinfo( String id ) ;
	public abstract int insertpointrecord( String id , int points) ;
	public abstract int selectshipfee( int optionid ) ;
	
	
	
}
