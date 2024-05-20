package shipping.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class OrderRecordVO {
	
	private String pdname;
	private long poptionid;
	private long productid;
	private long optionprice;
	private String orderdate;
	private String memid;
	private String shippingoptionname;
	private long payrecordid;
	private long paydetailid;
	private long quantity;
	private String imgurl;
	private String pmethod;
}
