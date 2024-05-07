package pay.persistence;

public interface PayDAO {
	public abstract int issue(String id , int couponnum) ;
	public abstract int isduplicoupon(String id , int couponnum) ;
	public abstract int viewpay(String productid , int option , int count) ;
}
