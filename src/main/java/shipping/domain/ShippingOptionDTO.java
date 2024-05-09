package shipping.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Builder
public class ShippingOptionDTO {
	
	private long id;
	private String shippingCompanyName;
	private String shippingOptionName;
	private String shippingOptionExplain;
	private String defaultShippingFee;
	private String regionName;
	private String ShppingCheck;

}
