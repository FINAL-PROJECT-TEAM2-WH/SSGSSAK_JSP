package pay.persistence;

public interface CouponDAO {
	public abstract int issue(String id , int couponnum) ;
	public abstract int isduplicoupon(String id , int couponnum) ;
}
