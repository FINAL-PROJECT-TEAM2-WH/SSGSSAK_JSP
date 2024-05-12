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
	 int orderednum ; 
	 String username ; 
	 Date orderdate;
	 
	 
}
