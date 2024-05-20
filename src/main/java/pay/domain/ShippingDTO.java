package pay.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShippingDTO {
	int id;
	String addrnick ;
	String name ; 
	String postnum;
	String roadaddr;
	String jiaddr;
	String detailaddr ;
	String tel;
	
	
}
