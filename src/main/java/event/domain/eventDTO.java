package event.domain;

import java.sql.Date;

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
public class eventDTO {
	
	private long   id;
	private String evnNm;
	private String evnImg;	
	private Date evnStrDt;
	private Date evnEnDt;
	
	
}
