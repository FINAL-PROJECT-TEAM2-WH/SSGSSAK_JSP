package event.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import event.domain.eventDTO;
import oracle.sql.DATE;

public class eventDAOimpl {

    private Connection conn = null;

    public eventDAOimpl(Connection conn) {
        this.conn = conn;
    }

    public eventDTO view(String id) throws SQLException {
        eventDTO dto = null;

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

                dto = eventDTO.builder()
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
}
