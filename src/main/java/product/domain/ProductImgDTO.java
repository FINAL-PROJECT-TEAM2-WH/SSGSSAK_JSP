package product.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductImgDTO {

		private String id ;
		private String productId;  
		private String imgUrl; 
		private String imgContent;
	
}
