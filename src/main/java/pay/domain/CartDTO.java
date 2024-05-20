package pay.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class CartDTO {
	int optionid;
	int scount ;
	String imgurl ;
	String seller ;
	String brand ;
	String optionname;
	int price;
	int shipfee ;
	

}
