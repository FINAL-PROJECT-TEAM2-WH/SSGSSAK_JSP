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
public class OrderedDTO {
	 String name ; 
	 Date orderdate;
	 int ordernum ; 
	 String ordername ;
	 String phonenum ; 
	 String addrnick;
	 String roadaddr ; 
	 String detailaddr ;
	 int orderamount ;
	 int shipamount  ;
	 int point;
	 
	 
	 
	 
	 
	 
}
