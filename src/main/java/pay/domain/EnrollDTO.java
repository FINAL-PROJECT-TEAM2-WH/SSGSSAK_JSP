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
public class EnrollDTO {
	int cateid;
	String cate1;
	String cate2;
	String cate3;
	String cate4;
	
	int brandid;
	String brandname;
	int sellerid;
	String sellername;
	
	int specialpid;
	String spclnm;
	Date spclstrdt;
	Date spclprcendt;
	int spcldscnrt;
	
	int shipid;
	String sname ;
	String dfee ;
	
	
}
