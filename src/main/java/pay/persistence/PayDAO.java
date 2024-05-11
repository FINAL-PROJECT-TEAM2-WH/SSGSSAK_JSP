package pay.persistence;

import java.util.ArrayList;

import pay.domain.CouponDTO;
import pay.domain.ProductDTO;
import pay.domain.UserDTO;

public interface PayDAO {
	public abstract int issue(String id , int couponnum) ;
	public abstract int isduplicoupon(String id , int couponnum) ;
	public abstract ProductDTO viewproduct(int optionid ,int count) ;
	public abstract ArrayList<UserDTO> userinfo(String id) ;
	public abstract ArrayList<CouponDTO> mycouponview(String id) ;
	public abstract int insertpayre(int points ,int usecoupons,String userid) ;
	public abstract int resultprice(int optionid,int quantitys,int usecoupons) ;
	public abstract int deletecoupon(String userid , int usecoupons) ;
	public abstract int updatepointre(String userid , int points) ;
	public abstract int updatepoint(String userid , int points) ;
	public abstract int insertpaydetail(int optionid, int couponid , int quantitys) ;
}
