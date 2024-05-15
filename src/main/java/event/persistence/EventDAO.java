package event.persistence;

import java.sql.Connection;
import java.util.ArrayList;

import event.domain.ApplicantDTO;
import event.domain.EventDTO;
import member.domain.PageDTO;

public interface EventDAO {
	
	
		ArrayList<EventDTO> view(String id , int evnNm ,int evnStrDt,int evnEnDt);
	
		int insertApplicant(Connection conn, ApplicantDTO dto) throws Exception;
		
		ApplicantDTO selectApplicant(Connection conn, String memid, String eid) throws Exception;
		
		ArrayList<ApplicantDTO> listApplicant(Connection conn, String eid, int currentPage, int numberPerPage) throws Exception;
		
		public PageDTO pageBlock(Connection conn, int currentPage, String eid) throws Exception;
		
		public int getTotalPages(Connection conn, int numberPerPage, String eid) throws Exception;
}
