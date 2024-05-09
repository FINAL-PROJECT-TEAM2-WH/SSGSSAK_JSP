package event.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import oracle.sql.DATE;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class applicantDTO {
	
	private long   id;
	private String eid;
	private String memid;	
	private String cmmn;
	private DATE WritingDate;
	private String win;
	private DATE winDay;
	
	
}
