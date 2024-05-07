package product.domain;

<<<<<<< HEAD
=======
import java.util.List;

>>>>>>> 4f46cbc8cd4ba9662ad10613b3d13c74febec12f
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

<<<<<<< HEAD
	
=======
    private List<ProductImgDTO> images;
>>>>>>> 4f46cbc8cd4ba9662ad10613b3d13c74febec12f
}
