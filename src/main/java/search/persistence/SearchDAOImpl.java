package search.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;

import com.util.JdbcUtil;

import search.domain.SearchDTO;
import shipping.persistence.ShippingPlaceInfoDAOImpl;

public class SearchDAOImpl implements SearchDAO {
	
	private static SearchDAOImpl instance;
	
	private SearchDAOImpl(){}
	
	public static SearchDAOImpl getInstance() {
		
		if( instance == null ) {
			instance = new SearchDAOImpl();
		}
		return instance;
	}

	@Override
	public int insertSearch(Connection conn, String memid, String searchWord) throws Exception {
		
		PreparedStatement pstmt = null;
		LocalDateTime ldt = LocalDateTime.now();
		String pattern = "yyyy-MM-dd hh:mm:ss";
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern(pattern);
		String datetime = ldt.format(dateFormatter);
		int rowCount = 0;
		String sql = "INSERT INTO search (id, memid, searchWord, searchhour) VALUES ( SEQ_SEARCH.NEXTVAL, ?, ?, ? ) ";
		try {			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			pstmt.setString(2, searchWord);
			pstmt.setString(3, datetime);
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("insert Search메서드에서 오류");
		} finally {
			JdbcUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public ArrayList<SearchDTO> searchList(Connection conn) throws Exception {
		
		ArrayList<SearchDTO> sdtoList = null;
		SearchDTO sdto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		long id;
		String searchword;
		Date searchHour;
		long currentRank;
		long rankChange;
		
		String sql = " SELECT * "
				+ " FROM ( "
				+ " WITH RankedSearches AS ( "
				+ "  SELECT "
				+ "    searchword, "
				+ "    TO_CHAR(searchhour, 'YYYY-MM-DD') AS \"date\", "
				+ "    COUNT(*) AS searchCount, "
				+ "    row_number() OVER (PARTITION BY TO_CHAR(searchhour, 'YYYY-MM-DD') ORDER BY COUNT(*) DESC) AS rank "
				+ "  FROM search "
				+ "  GROUP BY TO_CHAR(searchhour, 'YYYY-MM-DD'), searchword "
				+ "  ORDER BY \"date\" DESC "
				+ " ) "
				+ "  SELECT "
				+ "    ROWNUM num, "
				+ "    c.searchword, "
				+ "    c.\"date\",   "
				+ "    c.rank AS currentRank, "
				+ "    LAG(c.rank, 1) OVER (PARTITION BY c.searchword ORDER BY c.\"date\") AS previousRank, "
				+ "    c.rank - LAG(c.rank, 1) OVER (PARTITION BY c.searchword ORDER BY c.\"date\") AS rankChange "
				+ "  FROM RankedSearches c "
				+ "  WHERE c.rank <= 20 "
				+ "  ORDER BY c.\"date\" DESC, c.rank "
				+ " ) "
				+ " WHERE num <= 20 ";
		//System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				sdtoList = new ArrayList<SearchDTO>();
				
				do {

					//id = rs.getLong("id");
					searchword = rs.getString("searchWord");
					searchHour = rs.getDate("date");
					currentRank = rs.getLong("currentRank");
					rankChange = rs.getLong("rankChange");
					
					sdto = new SearchDTO().builder()
							//.id(id)
							.searchword(searchword)
							.searchHour(searchHour)
							.currentRank(currentRank)
							.rankChange(rankChange)
							.build();
					sdtoList.add(sdto);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchDAO 메서드에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return sdtoList;
	}


}
