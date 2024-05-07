package pay.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CouponDTO {
		String ctype;
		int maxamount;
		int minamount;
		int discountrate;
		int issuecond;
		String cate;
		Date start;
		Date end;
		
		
}
