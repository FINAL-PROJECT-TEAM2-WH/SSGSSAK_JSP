package product.domain;

import java.util.List;

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
public class ProductDTO {
 
    private long id ;
    private String categoryId ;
    private int specialPriceId; 
    private String shippingOptionId ;
    private String sellerStoreId; 
    private String brandId ;
    private String pdName ;
    private String pcontent;
    private String updateDay ;
    private String brandName;
    
    private List<ProductImgDTO> images;
}
