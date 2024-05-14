package member.domain;

import java.sql.Date;

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
public class MemberDTO {
	private String id;
	private String email;
	private String address;
	private String phoneNum;
	private String name;
	private String passwd;
	private Date birthD;
	private Date registerDate;
	private Date updateDate ;
	private int loginNofication;
	private int login2Nofication;
}
