package pay.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO {
	int shipnum;
	String name ; 
	String phonenum ; 
	String roadaddress;
	String email;
	String addressNick;
	String cardnumber;
	int cpoint;

}
