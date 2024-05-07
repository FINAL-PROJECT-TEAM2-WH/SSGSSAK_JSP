package pay.persistence;

import java.util.ArrayList;

import pay.domain.ProductDTO;

public interface PayDAO {
	public abstract int issue(String id , int couponnum) ;
	public abstract int isduplicoupon(String id , int couponnum) ;
	public abstract ArrayList<ProductDTO> viewpay(String productid , int option ,int count)) ;
}
