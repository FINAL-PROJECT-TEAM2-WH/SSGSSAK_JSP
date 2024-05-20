package search.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;

import org.apache.catalina.tribes.util.Arrays;

import com.util.JdbcUtil;

import member.domain.PageDTO;
import search.domain.SearchDTO;
import search.domain.SearchVO;
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
		String pattern = "yyyy/MM/dd";
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

	@Override
	public ArrayList<SearchVO> searchResultList(Connection conn, int currentPage, int numberPerPage, String searchWord)
			throws Exception {
		
		ArrayList<SearchVO> slist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		SearchVO svo = null;
		String pdname;
		String pcontent;
		long shippingoptionid;
		String categoryid;
		String majorcatename;
		String middlecatename;
		String minicatename;
		String subcatename;
		long productid;
		String brandname;
		String sellername;
		long defaultshippingfee;
		String shippingoptionexplain;
		String soptionname;
		long optionprice;
		long discountprice;
		long notprice;
		String imgurl;
		double[] reviewTemp = new double[2];
		double reviewPoint;
		long reviewCount;
		String sql = " SELECT *  "
				+ " FROM(  "
				+ " SELECT sp.shippingoptionname, sp.shippingoptionexplain, sp.defaultshippingfee ,c1.*,  ROWNUM num  "
				+ " FROM shippingoption sp JOIN (  "
				+ " SELECT ss.sellername, bi.brandname, pd.id productid, pd.categoryid, pd.shippingoptionid,  "
				+ " pd.pdname, pd.pcontent, ct.subcatename, ct.minicatename, ct.middlecatename, ct.majorcatename  "
				+ " FROM product pd JOIN sellerstore ss ON pd.sellerstoreid = ss.id  "
				+ "                JOIN brand       bi ON pd.brandid = bi.id  "
				+ "                JOIN category    ct ON pd.categoryid = ct.id ) c1  "
				+ " ON sp.id = c1.shippingoptionid  "
				+ " WHERE ( c1.brandname LIKE ? OR c1.sellername LIKE ? OR c1.pdname LIKE ? OR c1.pcontent LIKE ? OR c1.majorcatename LIKE ?  "
				+ " OR c1.middlecatename LIKE ? OR c1.subcatename LIKE ? OR c1.minicatename LIKE ? ) )  c2  "
				+ " WHERE num BETWEEN ? AND ? "
				+ " ORDER BY num DESC ";
		try {	
			//System.out.println(likePattern);
			String likePattern = "%" + searchWord + "%"; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, likePattern);
			pstmt.setString(2, likePattern);
			pstmt.setString(3, likePattern);
			pstmt.setString(4, likePattern);
			pstmt.setString(5, likePattern);
			pstmt.setString(6, likePattern);
			pstmt.setString(7, likePattern);
			pstmt.setString(8, likePattern);
			int start = (currentPage - 1) * numberPerPage + 1 ;
			int end = start + numberPerPage - 1 ; 
			pstmt.setInt(9, start);
			pstmt.setInt(10, end);
			rs = pstmt.executeQuery();
			
			if( rs == null ) {
				System.out.println("rs가 null이다");
			}
			
			if( rs.next() ) {
				slist = new ArrayList<SearchVO>();	
				do {
					
					pdname = rs.getString("pdname");
					pcontent = rs.getString("pcontent");
					shippingoptionid = rs.getLong("shippingoptionid");
					categoryid = rs.getString("categoryid");
					majorcatename = rs.getString("majorcatename");
					middlecatename = rs.getString("middlecatename");
					minicatename = rs.getString("minicatename");
					subcatename = rs.getString("subcatename");
					productid = rs.getLong("productid");
					brandname = rs.getString("brandname");
					sellername = rs.getString("sellername");
					defaultshippingfee = rs.getLong("defaultshippingfee");
					shippingoptionexplain = rs.getString("shippingoptionexplain");
					soptionname = rs.getString("shippingoptionname");
					SearchDAOImpl dao = SearchDAOImpl.getInstance();
					ShippingPlaceInfoDAOImpl sdao = ShippingPlaceInfoDAOImpl.getInstance();
					imgurl = sdao.imgurlSelect(conn, productid);
					long[] prices= dao.optionprice(conn, productid);
					optionprice = prices[0];
					discountprice = prices[1];
					notprice = prices[2];
					reviewTemp = dao.reviewPointCount(conn, productid);
					reviewPoint = reviewTemp[0];
					reviewCount = (long)reviewTemp[1];
					svo = new SearchVO().builder()
							.pdname(pdname)
							.pcontent(pcontent)
							.shippingoptionid(shippingoptionid)
							.categoryid(categoryid)
							.majorcatename(majorcatename)
							.middlecatename(middlecatename)
							.minicatename(minicatename)
							.subcatename(subcatename)
							.productid(productid)
							.brandname(brandname)
							.sellername(sellername)
							.defaultshippingfee(defaultshippingfee)
							.shippingoptionexplain(shippingoptionexplain)
							.soptionname(soptionname) // 배송 옵션 이름
							.optionprice(optionprice)
							.discountprice(discountprice)
							.notprice(notprice)
							.imgurl(imgurl)
							.reviewPoint(reviewPoint)
							.reviewCount(reviewCount)
							.build();
					
					slist.add(svo);
					
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchPageList DAO에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return slist;
		
	}
	
	public double[] reviewPointCount(Connection conn, long productid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		double reviewPoint = 0;
		double reviewCount = 0;
		double[] reviewTemp = new double[2];
		String sql = " SELECT AVG(grade) reviewPoint, COUNT(id) reviewCount   "
				+ " FROM review  "
				+ " WHERE productid = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, productid);
			rs = pstmt.executeQuery();
			if( rs.next() ) {

		        reviewPoint = rs.getDouble("reviewPoint");
		        reviewCount = rs.getDouble("reviewCount");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("reviewPointCountDAO에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		reviewTemp[0] = reviewPoint;
		reviewTemp[1] = reviewCount;
		return reviewTemp; 
	}
	
	public long[] optionprice(Connection conn, long productid) {
		long[] prices = new long[3];
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		
		String sql = "SELECT c1.optionprice, c1.spcldscnrt  "
				+ "FROM (  "
				+ "SELECT DISTINCT po.optionprice , pd.specialpriceid , sp.spclDscnRt, ROWNUM num  "
				+ "FROM productoption po JOIN product pd ON pd.id = po.productid  "
				+ "                      JOIN specialprice sp ON sp.id = pd.specialpriceid   "
				+ "WHERE po.productid = ?  AND optionprice IS NOT NULL ) c1  "
				+ "WHERE num = 1 ";
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, productid);
			
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				prices[0] = rs.getLong("optionprice");
				double tempd = rs.getLong("spcldscnrt");
				long temp = (long)(prices[0] * (1 - ( tempd / 100)));
				prices[1] = temp;
				
				prices[2] = prices[0] - prices[1];
			}
			
			if( prices[0] == 0 && prices[0] == 0 ) {
				prices[0] = 135900;
				prices[1] = 53001;
				prices[2] = 82899;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	
		return prices;
	}
	
	@Override
	public PageDTO pageBlock(Connection conn, int currentPage, int numberPerPage, String searchWord) throws Exception {
		PageDTO pdto = null;

		int numberOfPageBlock = 10;
		SearchDAOImpl dao = SearchDAOImpl.getInstance();
		int totalPage = dao.getTotalPages(conn, numberPerPage, searchWord);
		pdto = new PageDTO(currentPage, numberPerPage, numberOfPageBlock, totalPage);
		
		return pdto;
	}
	
	@Override
	public int getTotalPages(Connection conn, int numberPerPage, String searchWord) throws SQLException {
		int totalPages = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " SELECT CEIL(COUNT(*)/?) count "
				+ " FROM(  "
				+ " SELECT sp.shippingoptionname, sp.shippingoptionexplain, sp.defaultshippingfee ,c1.*,  ROWNUM num  "
				+ " FROM shippingoption sp JOIN (  "
				+ " SELECT ss.sellername, bi.brandname, pd.id productid, pd.categoryid, pd.shippingoptionid,  "
				+ " pd.pdname, pd.pcontent, ct.subcatename, ct.minicatename, ct.middlecatename, ct.majorcatename  "
				+ " FROM product pd JOIN sellerstore ss ON pd.sellerstoreid = ss.id  "
				+ "                JOIN brand       bi ON pd.brandid = bi.id  "
				+ "                JOIN category    ct ON pd.categoryid = ct.id ) c1  "
				+ " ON sp.id = c1.shippingoptionid  "
				+ " WHERE ( c1.brandname LIKE ? OR c1.sellername LIKE ? OR c1.pdname LIKE ? OR c1.pcontent LIKE ? OR c1.majorcatename LIKE ?  "
				+ " OR c1.middlecatename LIKE ? OR c1.subcatename LIKE ? OR c1.minicatename LIKE ? ) )  c2  ";
		

		
		try {
			pstmt = conn.prepareStatement(sql);
			String likePattern = "%" + searchWord + "%"; 
			pstmt.setInt(1, numberPerPage);
			pstmt.setString(2, likePattern);
			pstmt.setString(3, likePattern);
			pstmt.setString(4, likePattern);
			pstmt.setString(5, likePattern);
			pstmt.setString(6, likePattern);
			pstmt.setString(7, likePattern);
			pstmt.setString(8, likePattern);
			pstmt.setString(9, likePattern);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				totalPages = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getTotalPagesDAO 메서드에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		
		return totalPages;
	}

	@Override
	public int searchResultCount(Connection conn, String searchWord) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " SELECT COUNT(*) count "
				+ " FROM(  "
				+ " SELECT sp.shippingoptionname, sp.shippingoptionexplain, sp.defaultshippingfee ,c1.*,  ROWNUM num  "
				+ " FROM shippingoption sp JOIN (  "
				+ " SELECT ss.sellername, bi.brandname, pd.id productid, pd.categoryid, pd.shippingoptionid,  "
				+ " pd.pdname, pd.pcontent, ct.subcatename, ct.minicatename, ct.middlecatename, ct.majorcatename  "
				+ " FROM product pd JOIN sellerstore ss ON pd.sellerstoreid = ss.id  "
				+ "                JOIN brand       bi ON pd.brandid = bi.id  "
				+ "                JOIN category    ct ON pd.categoryid = ct.id ) c1  "
				+ " ON sp.id = c1.shippingoptionid  "
				+ " WHERE ( c1.brandname LIKE ? OR c1.sellername LIKE ? OR c1.pdname LIKE ? OR c1.pcontent LIKE ? OR c1.majorcatename LIKE ?  "
				+ " OR c1.middlecatename LIKE ? OR c1.subcatename LIKE ? OR c1.minicatename LIKE ? ) )  c2  ";
		
		int count = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			String likePattern = "%" + searchWord + "%"; 
			pstmt.setString(1, likePattern);
			pstmt.setString(2, likePattern);
			pstmt.setString(3, likePattern);
			pstmt.setString(4, likePattern);
			pstmt.setString(5, likePattern);
			pstmt.setString(6, likePattern);
			pstmt.setString(7, likePattern);
			pstmt.setString(8, likePattern);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				count = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchListCountDAO메서드에서 오류");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			
		}
		return count;
	}

	@Override
	public String[] searchRelation(Connection conn, String searchWord) throws Exception {
		String[] srArr = new String[10];
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT searchword  "
				+ " FROM (  "
				+ " SELECT searchword, ROWNUM num  "
				+ " FROM (  "
				+ " SELECT DISTINCT searchword   "
				+ " FROM search  "
				+ " WHERE searchword LIKE ? ) )  "
				+ " WHERE num <= 10 ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			String likePattern = "%" + searchWord + "%"; 
			pstmt.setString(1, likePattern);
			rs = pstmt.executeQuery();
			int count = 0;
			if( rs.next() ) {
				
				do {
					srArr[count] = rs.getString("searchword");
					count++;
				} while (rs.next());
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchRelationDAO에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return srArr;
	}

	@Override
	public LinkedHashMap<String, Long> searchBrandMap(Connection conn, String searchWord) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LinkedHashMap<String, Long> blhm = null;
		
		String sql = " SELECT b.id AS brandid,   "
				+ "       b.brandname,   "
				+ "       COUNT(pd.id) AS product_count  "
				+ " FROM brand b  "
				+ " JOIN product pd ON b.id = pd.brandid  "
				+ " WHERE pd.pdname LIKE ? OR pd.pcontent LIKE ?  "
				+ " GROUP BY b.id, b.brandname "
				+ " HAVING COUNT(pd.id) > 0 "
				+ " ORDER BY product_count DESC ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			String likePattern = "%" + searchWord + "%"; 
			pstmt.setString(1, likePattern);
			pstmt.setString(2, likePattern);
			rs = pstmt.executeQuery();
			
			int count = 0;
			if( rs.next() ) {
				blhm = new LinkedHashMap<String, Long>();
				do {
					if( count == 5 ) break;
					count++;
					blhm.put(rs.getString("brandname"), rs.getLong("product_count"));
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchBrandMapDAO에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return blhm;
	}

	@Override
	public LinkedHashMap<String, ArrayList<String>> searchCategory(Connection conn, String searchWord)
			throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LinkedHashMap<String, ArrayList<String>> clmap = null;
		String middlecatename;
		String subcatename;
		
		String sql = " SELECT *  "
				+ " FROM(  "
				+ " SELECT sp.shippingoptionname, sp.shippingoptionexplain, sp.defaultshippingfee ,c1.*,  ROWNUM num  "
				+ " FROM shippingoption sp JOIN (  "
				+ " SELECT ss.sellername, bi.brandname, pd.id productid, pd.categoryid, pd.shippingoptionid,  "
				+ " pd.pdname, pd.pcontent, ct.subcatename, ct.minicatename, ct.middlecatename, ct.majorcatename  "
				+ " FROM product pd JOIN sellerstore ss ON pd.sellerstoreid = ss.id  "
				+ "                JOIN brand       bi ON pd.brandid = bi.id  "
				+ "                JOIN category    ct ON pd.categoryid = ct.id ) c1  "
				+ " ON sp.id = c1.shippingoptionid  "
				+ " WHERE ( c1.brandname LIKE ? OR c1.sellername LIKE ? OR c1.pdname LIKE ? OR c1.pcontent LIKE ? OR c1.majorcatename LIKE ?  "
				+ " OR c1.middlecatename LIKE ? OR c1.subcatename LIKE ? OR c1.minicatename LIKE ? ) )  c2  "
				+ " ORDER BY num DESC ";
		
		try {
			String likePattern = "%" + searchWord + "%"; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, likePattern);
			pstmt.setString(2, likePattern);
			pstmt.setString(3, likePattern);
			pstmt.setString(4, likePattern);
			pstmt.setString(5, likePattern);
			pstmt.setString(6, likePattern);
			pstmt.setString(7, likePattern);
			pstmt.setString(8, likePattern);
			
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				clmap = new LinkedHashMap<String, ArrayList<String>>();
				do {
					middlecatename = rs.getString("middlecatename");
					subcatename = rs.getString("subcatename");
					
					clmap.computeIfAbsent(middlecatename, k -> new ArrayList<>()).add(subcatename) ;
					
				} while (rs.next());

			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchCategory DAO에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return clmap;
	}

	@Override
	public LinkedHashMap<String, SearchVO> searchCateCount(Connection conn, String searchWord) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LinkedHashMap<String, SearchVO> scCountMap = null;
		String cateName = null;
		long count = 0;
		String categoryid = null;
		String sql = "SELECT COUNT(middlecatename) count , middlecatename, categoryid "
				+ " FROM(   SELECT sp.shippingoptionname, sp.shippingoptionexplain, sp.defaultshippingfee ,c1.*,  ROWNUM num     "
				+ " FROM shippingoption sp JOIN (     "
				+ " SELECT ss.sellername, bi.brandname, pd.id productid, pd.categoryid, pd.shippingoptionid,    "
				+ " pd.pdname, pd.pcontent, ct.subcatename, ct.minicatename, ct.middlecatename, ct.majorcatename    "
				+ " FROM product pd JOIN sellerstore ss ON pd.sellerstoreid = ss.id             "
				+ " JOIN brand       bi ON pd.brandid = bi.id               "
				+ " JOIN category    ct ON pd.categoryid = ct.id )  "
				+ " c1   ON sp.id = c1.shippingoptionid  "
				+ " WHERE ( c1.brandname LIKE ? OR c1.sellername LIKE ? OR c1.pdname LIKE ? OR c1.pcontent LIKE ? OR c1.majorcatename LIKE ?  "
				+ " OR c1.middlecatename LIKE ? OR c1.subcatename LIKE ? OR c1.minicatename LIKE ?  ) )  c2  "
				+ " GROUP BY middlecatename, categoryid  "
				+ " ORDER BY middlecatename ";
		
		try {
			String likePattern = "%" + searchWord + "%"; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, likePattern);
			pstmt.setString(2, likePattern);
			pstmt.setString(3, likePattern);
			pstmt.setString(4, likePattern);
			pstmt.setString(5, likePattern);
			pstmt.setString(6, likePattern);
			pstmt.setString(7, likePattern);
			pstmt.setString(8, likePattern);
			
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				
				scCountMap = new LinkedHashMap<String, SearchVO>();
				
				do {
					
					cateName = rs.getString("middlecatename");
					count = rs.getLong("count");
					categoryid = rs.getString("categoryid");
					scCountMap.put(cateName, new SearchVO().builder().count(count).categoryid(categoryid).build());
					
				} while (rs.next());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("searchCateCountDAO에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		return scCountMap;
	}
	
	
	
	


}
