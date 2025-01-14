package mainpage.domain;

import java.util.Date;

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
public class ProductmainDT_old2 {
	private long id;
    private long shippingOptionId;
    private String sellerstoreid;
    private String sellerName; 
    private String brandId;
    private String brandName;
    private String pDname;
    private String upDateDay;
    private long optionPrice;
    private long sprice;
    private long discount;
    private String categoryId;
	
}
