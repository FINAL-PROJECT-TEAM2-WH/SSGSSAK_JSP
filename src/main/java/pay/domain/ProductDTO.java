package pay.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {
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
	int quantity ; 
	int cpoint;
	String cardnumber;
	
	
	
	
	
}
