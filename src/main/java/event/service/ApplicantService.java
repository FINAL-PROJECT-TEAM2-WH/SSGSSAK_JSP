package event.service;

import java.sql.Connection;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import event.domain.ApplicantDTO;
import event.persistence.EventDAOimpl;

public class ApplicantService {
		
	private static ApplicantService instance = null;
	
	private ApplicantService() {}
	
	public static ApplicantService getInstance() {
		
		if(instance == null) {
			instance = new ApplicantService();
		}
		return instance;
	}
	
	public int applicantInsertService(ApplicantDTO dto) {
		int rowCount = 0;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			EventDAOimpl daoimpl = EventDAOimpl.getInstance();
			rowCount = daoimpl.insertApplicant(conn, dto);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("applicantService메서드에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		
		return rowCount;	
	}
	
	public ApplicantDTO applicantSelectService(String memid, String eid) {
		ApplicantDTO adto = new ApplicantDTO();
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			EventDAOimpl daOimpl = EventDAOimpl.getInstance();
			adto = daOimpl.selectApplicant(conn, memid, eid);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("applicantSelectService메서드에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		return adto;
	}

}
