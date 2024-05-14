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
public class AgreementDTO {
	private int id;
	private String terms_id;
	private String memid;
	private String status;
	private Date agreeDate;
}
