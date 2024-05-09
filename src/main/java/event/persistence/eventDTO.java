package event.persistence;

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
	private String spclImg;
	private String spclNm;	
	private DATE spclStrDt;
	private DATE spclPrcEnDt;
	private long spclDscnRt;
	
}
