package event.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import event.domain.EventDTO;
import member.domain.BoardDTO;
import pay.domain.ProductDTO;

public interface EventDAO {
	
	
		ArrayList<EventDTO> view(String id , int evnNm ,int evnStrDt,int evnEnDt);
	
		int insertApplicant(Connection conn, String memid, int eventid) throws Exception;
		
}
