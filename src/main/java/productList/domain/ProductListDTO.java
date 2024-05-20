package productList.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import product.domain.ProductImgDTO;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductListDTO {
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
    private long reviewCount;
    private double avgGrade;
    
    private List<ProductImgDTO> images;

}
