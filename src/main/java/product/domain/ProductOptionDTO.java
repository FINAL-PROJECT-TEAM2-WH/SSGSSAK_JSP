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
public class ProductOptionDTO {
 
    private long id ;
    private long productId ;
    private String optionName;
    private String optionDesc;
    private String optionRef;
    private int optionPrice;
    private int optionStrock;
    
    
    
}
