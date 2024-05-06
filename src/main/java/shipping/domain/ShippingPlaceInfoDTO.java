package shipping.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ShippingPlaceInfoDTO {
	
	private long   id;
	private String memid;
	private String receiveMem;	
	private String addressnick;
	private String roadAddress;
	private String jibunAddress;
	private String detailAddress;
	private String tel;
	private String postnum;
	private String defaultShipping;
	
}
