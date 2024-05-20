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
	
	int optionid ;
	String imgurl ; 
	String brand ; 
	String seller ; 
	String pdname ; 
	String optionname;
	String optiondesc;
	int price ; 
	int deshipfee ;
	int specialp;
	int quantity ; 
	
}
