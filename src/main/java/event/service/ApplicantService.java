package event.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import event.domain.ApplicantDTO;
import event.persistence.EventDAOimpl;
import member.domain.PageDTO;

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
	
	public ArrayList<ApplicantDTO> applicantSelectService(String eid, int currentPage) {
		ArrayList<ApplicantDTO> alist = null;
		Connection conn = null;
		int numberPerPage = 10;
		try {
			conn = ConnectionProvider.getConnection();
			EventDAOimpl daOimpl = EventDAOimpl.getInstance();
			alist = daOimpl.listApplicant(conn, eid, currentPage, numberPerPage);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("applicantSelectService메서드에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		return alist;
	}
	
	public PageDTO pageBlock(String eid, int currentPage) {
		PageDTO pdto = null;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			EventDAOimpl edoimpl = EventDAOimpl.getInstance();
			pdto = edoimpl.pageBlock(conn, currentPage, eid);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("pageBlock메서드에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		return pdto;
	}
	

}
