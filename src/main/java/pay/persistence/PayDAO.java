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
}
