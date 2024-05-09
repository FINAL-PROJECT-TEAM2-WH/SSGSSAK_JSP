package event.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import event.domain.eventDTO;
import member.domain.BoardDTO;
import pay.domain.ProductDTO;

public abstract class eventDAO {
	
	
		public abstract ArrayList<eventDTO> view(String id , int evnNm ,int evnStrDt,int evnEnDt) ;
	

		
	}


