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
public class ProductDTO {

    private String id ;
    private String categoryId ;
    private int specialPriceId; 
    private String shippingOptionId ;
    private String sellerStoreId; 
    private String brandId ;
    private String pdName ;
    private int price ;
    private int sale ;
    private String pcontent;
    private String updateDay ;
    private int stock;

	
}
