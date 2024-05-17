package shipping.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Data
@NoArgsConstructor
@Builder
@AllArgsConstructor
public class OrderDetailVO {
	
	private String sInfoId;
	private String mname;
	private String phonenum;
	private String shippingmsg;
	private String shippingrequest;
	private String receiveposition;
	private String entrance;
	private String orderid;
	private String memid;
	private String receivemem;
	private String roadaddress;
	private String detailaddress;
	
}
