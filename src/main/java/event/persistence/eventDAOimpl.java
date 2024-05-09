package event.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import event.command.eventHandler;
import event.domain.eventDTO;




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
                String evnStrDt = rs.getString("evnStrDt");
                String evnEnDt = rs.getString("evnEnDt");

                dto = new eventHandler.Builder()
                        .id(eventId)
                        .evnNm(evnNm)
                        .evnImg(evnImg)
                        .evnStrDt(evnStrDt)
                        .evnEnDt(evnEnDt)
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
