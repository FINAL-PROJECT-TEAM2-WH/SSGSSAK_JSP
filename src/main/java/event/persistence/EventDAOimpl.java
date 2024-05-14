package event.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import event.domain.EventDTO;
import oracle.sql.DATE;

public class EventDAOimpl implements EventDAO {

    private Connection conn = null;

    public EventDAOimpl(Connection conn) {
        this.conn = conn;
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
	public int insertApplicant(Connection conn, String memid, int eventid) throws Exception {
		
		PreparedStatement pstmt = null;
		int rowCount = 0;
		
		String sql = " INSERT INTO applicant "
				+ "VALUES( applicant.NEXTVAL, ?(eventid), ?(memid), ?('신청코메트'), ?(신청날짜), null, null) ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, eid);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("insApplicantDAO에서 오류~~");
		} finally {
			JdbcUtil.close(pstmt);
		}
			
		
		return 0;
	}
    
    
}
