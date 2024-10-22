package event.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import event.domain.ApplicantDTO;
import event.domain.EventDTO;
import member.domain.PageDTO;

public class EventDAOimpl implements EventDAO {

    private Connection conn = null;

    public EventDAOimpl(Connection conn) {
        this.conn = conn;
    }
    
	private static EventDAOimpl instance = null;
	
	private EventDAOimpl() {}
	
	public static EventDAOimpl getInstance() {
		
		if(instance == null) {
			instance = new EventDAOimpl();
		}
		return instance;
	}

    public EventDTO view(String id) throws SQLException {
        EventDTO dto = null;

        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String sql = "SELECT id, evnNm, evnImg, evnStrDt, evnEnDt " +
                     "FROM event " +
                     "WHERE id = ? ";
       try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                long eventId = rs.getLong("id");
                String evnNm = rs.getString("evnNm");
                String evnImg = rs.getString("evnImg");
                Date evnStrDt = rs.getDate("evnStrDt");
                Date evnEnDt = rs.getDate("evnEnDt");

                dto = EventDTO.builder()
                        .id(eventId)
                        .evnNm(evnNm)
                        .evnImg(evnImg)
                        .evnStrDt(evnEnDt)
                        .evnStrDt(evnStrDt)
                        .build();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
        }
        return dto;
    }

	@Override
	public ArrayList<EventDTO> view(String id, int evnNm, int evnStrDt, int evnEnDt) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertApplicant(Connection conn, ApplicantDTO dto) throws Exception {
		
		PreparedStatement pstmt = null;
		int rowCount = 0;
		
		String eventid = dto.getEid();
		String memid = dto.getMemid();
		String cmmn = dto.getCmmn();
		String WritingDate = dto.getWritingDate();
		
		String sql = " INSERT INTO applicant "
				+ "VALUES( applicant_seq.NEXTVAL, ?, ?, ?, ?, null, null) ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eventid);
			pstmt.setString(2, memid);
			pstmt.setString(3, cmmn);
			pstmt.setString(4, WritingDate);
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("insApplicantDAO에서 오류~~");
		} finally {
			JdbcUtil.close(pstmt);
		}

		return 0;
	}

	@Override
	public ApplicantDTO selectApplicant(Connection conn, String memid, String eid) throws Exception {
		ArrayList<ApplicantDTO> alist = null;
		ApplicantDTO adto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String cmmn = null;
		String WritingDate = null;
		String name = null;
		
		
		String sql = " SELECT id, eid, memid, cmmn, WritingDate, win, winday FROM applicant WHERE eid = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			pstmt.setString(2, eid);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				cmmn = rs.getString("cmmn");
				WritingDate = rs.getString("WritingDate");
				
				adto = new ApplicantDTO().builder()
						.cmmn(cmmn)
						.writingDate(WritingDate)
						.name(name)
						.build();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return adto;
	}
	
	@Override
	public ArrayList<ApplicantDTO> listApplicant(Connection conn, String eid, int currentPage, int numberPerPage) throws Exception {
		
		ArrayList<ApplicantDTO> alist = null;
		ApplicantDTO adto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String cmmn = null;
		String writingDate = null;
		String name = null;
		long id;
		String sql = " SELECT * FROM  "
				+ " (  "
				+ " SELECT ROWNUM no, t.*  "
				+ " FROM  "
				+ " (  "
				+ " SELECT a.id, eid, memid, cmmn, WritingDate, win, winday, name "
				+ " FROM applicant a JOIN member m ON a.memid = m.id "
				+ " WHERE eid = '"+ eid +"' "
				+ " ORDER BY id DESC "
				+ "	) t  "
				+ " ) b  "
				+ " WHERE no BETWEEN ? and ? ";
		
		try {
			int start = (currentPage - 1) * numberPerPage + 1 ;
			int end = start + numberPerPage - 1 ; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				
				alist = new ArrayList<ApplicantDTO>();
				
				do {
					cmmn = rs.getString("cmmn");
					writingDate = rs.getString("WritingDate");
					name = rs.getString("name");
					id = rs.getLong("id");
					writingDate = writingDate.substring(0, 11);
					adto = new ApplicantDTO().builder()
							.id(id)
							.cmmn(cmmn)
							.writingDate(writingDate)
							.name(name)
							.build();
					
					alist.add(adto);
				} while (rs.next());
				
			}
			//System.out.println(alist);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return alist;
	}

	@Override
	public PageDTO pageBlock(Connection conn, int currentPage, String eid) throws Exception {
		PageDTO pdto = null;
		int numberPerPage = 10;
		int numberOfPageBlock = 10;
		EventDAOimpl dao = EventDAOimpl.getInstance();
		int totalPage = dao.getTotalPages(conn, numberPerPage, eid);
		pdto = new PageDTO(currentPage, numberPerPage, numberOfPageBlock, totalPage);
		return pdto;
	}
	
	@Override
	public int getTotalPages(Connection conn, int numberPerPage, String eid) throws SQLException {
		int totalPages = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT CEIL(COUNT(*)/?) FROM applicant where eid = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, numberPerPage);
			pstmt.setString(2, eid);
			rs =  pstmt.executeQuery();
			if ( rs.next() ) totalPages = rs.getInt(1);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getTotalPagesDAO 메서드에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		
		return totalPages;
	}
    
    
}
