package product.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.StandardException;

@Data
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ProductListVO {
	
		private String productid;
		private String brandname; 
	    private String imgurl;
	    private String shippingoptionname;
	    private int optionprice;
	    private String sellername;
	    private String pdname;

}
