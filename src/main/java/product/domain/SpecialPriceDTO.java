package product.domain;

import java.util.Date;
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
public class SpecialPriceDTO {
 
    private int id;
    
    private String  spcImg ;
    private String  spclNm;
    private Date spclStrDt;
    private Date spclPrcEnDt ;
    private int spclDscnRt;
    
}
