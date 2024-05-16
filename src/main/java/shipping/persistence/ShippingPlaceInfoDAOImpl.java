package shipping.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import member.domain.PageDTO;
import shipping.domain.OrderRecordVO;
import shipping.domain.ShippingPlaceInfoDTO;

public class ShippingPlaceInfoDAOImpl implements ShippingPlaceInfoDAO {
	
	private static ShippingPlaceInfoDAOImpl instance;
	
	private ShippingPlaceInfoDAOImpl(){}
	
	public static ShippingPlaceInfoDAOImpl getInstance() {
		
		if( instance == null ) {
			instance = new ShippingPlaceInfoDAOImpl();
		}
		return instance;
	}


	
	// 회원 배송지 추가
	@Override
	public int insert(Connection conn, ShippingPlaceInfoDTO dto) {
		// 회원이 들고있는 기본배송지 번호를 들고와서 그거를 "x"로 바꿔주고
		// insert()
		// defaultShippingUpdate() => 이 메서드에서 SQL 2번의 작업
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int rowCount = 0;
		String memid = dto.getMemid();
		ShippingPlaceInfoDAOImpl daoImpl = ShippingPlaceInfoDAOImpl.getInstance();
		String sql = null;
		try {
				rowCount = daoImpl.defaultShippingUpdate(conn, memid);
				sql = " INSERT INTO shippingPlaceInformation ( id, memid, addressNick, receiveMem, tel, postNum, defaultShipping, roadAddress, jibunAddress, detailAddress ) "
						+ " VALUES ( seqshipplaceinfo.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";			
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, memid);
				pstmt.setString(2, dto.getAddressnick());
				pstmt.setString(3, dto.getReceiveMem());
				pstmt.setString(4, dto.getTel());
				pstmt.setString(5, dto.getPostnum());
				pstmt.setString(6, "기본배송지");
				pstmt.setString(7, dto.getRoadAddress());
				pstmt.setString(8, dto.getJibunAddress());
				pstmt.setString(9, dto.getDetailAddress());
				rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> ShippingPlaceInfoDAOImple defaultShippingUpdate 메서드 호출 오류~~");
		}
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
		return rowCount;
	}
	
	
	// 기본배송지 업데이트
	@Override
	public int defaultShippingUpdate(Connection conn, String memid) throws Exception {
		
		int rowCount = 0;
		long id = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String SelSql = "SELECT id "
					+ " FROM shippingPlaceInformation "
					+ " WHERE memid = ? AND (defaultshipping = '기본배송지' OR defaultshipping = '이번만배송지') ";

			pstmt = conn.prepareStatement(SelSql);
			pstmt.setString(1, memid);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				id = rs.getLong("id");
			}
			
			if( id != 0 ) {
				String upSql = " UPDATE shippingPlaceInformation "
						+ " SET DEFAULTSHIPPING = 'X' "
						+ " WHERE id = ? " ;
				
				pstmt = conn.prepareStatement(upSql);
				pstmt.setLong(1, id);
				rowCount = pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("기본 배송지 설정 메서드에서 오류~~");
		}
		
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
		return rowCount;
	}

	// 배송지 정보 리스트형태로
	@Override
	public ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoList(Connection conn, String memid) throws Exception {
		System.out.println("리스트 DAO요청이 발생");
		ShippingPlaceInfoDTO spidto = null;
		ArrayList<ShippingPlaceInfoDTO> spidtoList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		long id = 0;
		String addressnick = null;
		String receiveMem = null;
		String roadAddress = null;
		String jibunAddress = null;
		String detailAddress = null;
		String tel = null;
		String postnum = null;
		String defaultShipping = null;
		
		try {
			String sql = "SELECT id, memid, addressnick, receivemem, roadaddress, jibunaddress, detailaddress, tel, postnum, defaultshipping "
					+ "FROM shippingPlaceInformation  "
					+ "WHERE memid = ? "
					+ "ORDER BY id DESC ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				spidtoList = new ArrayList<ShippingPlaceInfoDTO>();
				
				do {
					id = rs.getLong("id");
					addressnick = rs.getString("addressnick");
					receiveMem = rs.getString("receiveMem");
					roadAddress = rs.getString("roadAddress");
					jibunAddress = rs.getString("jibunAddress");
					detailAddress = rs.getString("detailAddress");
					tel = rs.getString("tel");
					postnum = rs.getString("postnum");
					defaultShipping = rs.getString("defaultShipping");
					
					spidto = new ShippingPlaceInfoDTO().builder()
							.memid(memid)
							.id(id)
							.addressnick(addressnick)
							.receiveMem(receiveMem)
							.roadAddress(roadAddress)
							.jibunAddress(jibunAddress)
							.detailAddress(detailAddress)
							.tel(tel)
							.postnum(postnum)
							.defaultShipping(defaultShipping)
							.build();
					
					spidtoList.add(spidto);
				} while (rs.next());
			}
		}catch (Exception e){
			e.printStackTrace();
			System.out.println("배송 메시지 list 메서드에서 오류~~");
		}
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
		return spidtoList;
	}
	
	// 배송 수정시 데이터 출력값
	@Override
	public ShippingPlaceInfoDTO ShippingPlaceUpView(Connection conn, long id) throws Exception {
		ShippingPlaceInfoDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String memid = null;
		String addressnick = null;
		String receiveMem = null;
		String roadAddress = null;
		String jibunAddress = null;
		String detailAddress = null;
		String tel = null;
		String postnum = null;
		
		String sql = " SELECT id, memid, addressnick, receivemem, roadaddress, jibunaddress, detailaddress, tel, postnum "
				+ " FROM shippingPlaceInformation  "
				+ " WHERE id = ?";
		//System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				
				memid = rs.getString("memid");
				addressnick = rs.getString("addressnick");
				receiveMem = rs.getString("receivemem");
				roadAddress = rs.getString("roadaddress");
				jibunAddress = rs.getString("jibunaddress");
				detailAddress = rs.getString("detailaddress");
				tel = rs.getString("tel");
				postnum = rs.getString("postnum");
				
				dto = new ShippingPlaceInfoDTO().builder()
						.id(id)
						.memid(memid)
						.addressnick(addressnick)
						.receiveMem(receiveMem)
						.roadAddress(roadAddress)
						.jibunAddress(jibunAddress)
						.detailAddress(detailAddress)
						.tel(tel)
						.postnum(postnum)
						.build();
			}
		}catch( Exception e) {
			e.printStackTrace();
			System.out.println("ShippingPlaceUpView 메서드에서 오류~~");
		}
		return dto;
	}

	@Override
	public int update(Connection conn, ShippingPlaceInfoDTO dto) throws Exception {
		int rowCount = 0;
		PreparedStatement pstmt = null;
		//System.out.println("updateDAO 들어옴");
		String sql = " UPDATE shippingPlaceInformation "
					+" SET addressnick = ?, "
					+ " receiveMem = ?, "
					+ " roadAddress = ?, "
					+ " jibunAddress = ?, "
					+ " detailAddress = ?, "
					+ " tel = ?, "
					+ " postNum = ? "
					+" WHERE id = ? ";
		//System.out.println(sql);
		try {
			conn = ConnectionProvider.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getAddressnick());
			pstmt.setString(2, dto.getReceiveMem());
			pstmt.setString(3, dto.getRoadAddress());
			pstmt.setString(4, dto.getJibunAddress());
			pstmt.setString(5, dto.getDetailAddress());
			pstmt.setString(6, dto.getTel());
			pstmt.setString(7, dto.getPostnum());
			pstmt.setLong(8, dto.getId());
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ShippingPlaceUpdate 메서드에서 오류~~");
		}
		JdbcUtil.close(pstmt);
		return rowCount;
	}

	@Override
	public int shippingStatusEdit(Connection conn, long id, String status, String memid) throws Exception {
		PreparedStatement pstmt = null;
		String sql = " UPDATE shippingPlaceInformation "
				+" SET DEFAULTSHIPPING = ?" 
				+" WHERE id = ? ";
		ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance(); 
		dao.defaultShippingUpdate(conn, memid);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, status);
			pstmt.setLong(2, id);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("shippingStatusEdit DAO 메서드에서 오류~~");
		}finally {
			JdbcUtil.close(pstmt);
		}
		return 0;
	}

	@Override
	public int shippingPlaceDelete(Connection conn, long id) throws Exception {
		
		int rowCount = 0;
		PreparedStatement pstmt = null;
		String sql = " DELETE FROM shippingPlaceInformation "
				+ " WHERE id = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, id);
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("shippingPlaceDelete DAO 메서드에서 오류~~");
		} finally {
			JdbcUtil.close(pstmt);
		}
		return rowCount;
	}

	@Override
	public int shippingPlaceTotalCount(Connection conn) throws Exception {
		
		PreparedStatement pstmt = null;
		String sql = "";
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("shippingPlaceTotalCount DAO 메서드에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		return 0;
	}

	@Override
	public ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoPageList(Connection conn, String memid, int currentPage,
			int numberPerPage) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ShippingPlaceInfoDTO> spiList = null;
		ShippingPlaceInfoDTO spiDto = null;
		long id = 0;
		String addressnick = null;
		String receiveMem = null;
		String roadAddress = null;
		String jibunAddress = null;
		String detailAddress = null;
		String tel = null;
		String postnum = null;
		String defaultShipping = null;
		
		String sql = "	SELECT * FROM "
				+ "	( "
				+ "	SELECT ROWNUM no, t.* "
				+ "	FROM "
				+ "	( "
				+ "	SELECT id, memid, addressnick, receivemem, roadaddress, jibunaddress, detailaddress, tel, postnum, defaultshipping "
				+ "	FROM SHIPPINGPLACEINFORMATION "
				+ "	WHERE memid = '"+ memid +"'"
				+ "	ORDER BY defaultshipping DESC, id DESC "
				+ "	) t "
				+ "	) b "
				+ "	WHERE no BETWEEN ? and ? ";
		
		System.out.println(sql);
		try {
			int start = (currentPage - 1) * numberPerPage + 1 ;
			int end = start + numberPerPage - 1 ; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				spiList = new ArrayList<ShippingPlaceInfoDTO>();
				
				do {
					id = rs.getLong("id");
					addressnick = rs.getString("addressnick");
					receiveMem = rs.getString("receiveMem");
					roadAddress = rs.getString("roadAddress");
					jibunAddress = rs.getString("jibunAddress");
					detailAddress = rs.getString("detailAddress");
					tel = rs.getString("tel");
					postnum = rs.getString("postnum");
					defaultShipping = rs.getString("defaultShipping");
					
					spiDto = new ShippingPlaceInfoDTO().builder()
							.id(id)
							.addressnick(addressnick)
							.receiveMem(receiveMem)
							.roadAddress(roadAddress)
							.jibunAddress(jibunAddress)
							.detailAddress(detailAddress)
							.tel(tel)
							.postnum(postnum)
							.defaultShipping(defaultShipping)
							.build();
					
					spiList.add(spiDto);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("pageListDAO 메서드에서 오류~~");
		}
		
		return spiList;
	}

	@Override
	public PageDTO pageBlock(Connection conn, int currentPage, String memid) throws Exception {
		PageDTO pdto = null;
		int numberPerPage = 10;
		int numberOfPageBlock = 10;
		ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
		int totalPage = dao.getTotalPages(conn, numberPerPage, memid);
		pdto = new PageDTO(currentPage, numberPerPage, numberOfPageBlock, totalPage);
		
		return pdto;
	}
	
	@Override
	public int getTotalPages(Connection conn, int numberPerPage, String memid) throws SQLException {
		int totalPages = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT CEIL(COUNT(*)/?) FROM SHIPPINGPLACEINFORMATION where memid = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, numberPerPage);
			pstmt.setString(2, memid);
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

	@Override
	public ArrayList<OrderRecordVO> orderList(Connection conn, String memid) throws Exception {
		ArrayList<OrderRecordVO> olist = null;
		OrderRecordVO ovo = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String pdname;
		long poptionid;
		long productid;
		long optionprice;
		String orderdate;
		long payrecordid;
		long paydetailid;
		long quantity;
		String imgurl;
		
		String sql = "SELECT pd.pdname, "
				+ "	c2.poptionid poptionid, c2.productid productid, c2.optionprice optionprice,  "
				+ "	c2.orderdate orderdate, c2.memid memid, c2.payrecordid payrecordid,  "
				+ "	c2.paydetailid paydetailid, c2.quantity quantity "
				+ "	FROM product pd JOIN( "
				+ "	SELECT po.id poptionid, po.productid productid, po.optionprice optionprice, c1.orderdate orderdate, c1.memid memid, c1.payrecordid payrecordid, c1.paydetailid paydetailid, c1.quantity quantity "
				+ "	FROM productoption po JOIN( "
				+ "	SELECT pr.orderdate orderdate, pr.memid memid, pr.id payrecordid, pt.id paydetailid, pt.quantity quantity, pt.id3 poptionid "
				+ "	FROM payrecord pr JOIN paydetail pt ON pr.id = pt.id2) c1 "
				+ "	ON c1.poptionid = po.id) c2 "
				+ "	ON pd.id = c2.productid "
				+ " WHERE memid = ? "
				+ " ORDER BY orderDate DESC ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				olist = new ArrayList<OrderRecordVO>();
				
				
				do {
					
					pdname = rs.getString("pdname");
					poptionid = rs.getLong("poptionid");
					productid = rs.getLong("productid");
					optionprice = rs.getLong("optionprice");
					orderdate = rs.getString("orderdate");
					payrecordid = rs.getLong("payrecordid");
					paydetailid = rs.getLong("paydetailid");
					quantity = rs.getLong("quantity");
					
					ShippingPlaceInfoDAOImpl dao = new ShippingPlaceInfoDAOImpl().getInstance();
					imgurl = dao.imgurlSelect(conn, productid);
					
					
					ovo = new OrderRecordVO().builder()
							.pdname(pdname)
							.poptionid(poptionid)
							.productid(productid)
							.optionprice(optionprice)
							.orderdate(orderdate)
							.payrecordid(payrecordid)
							.paydetailid(paydetailid)
							.quantity(quantity)
							.imgurl(imgurl)
							.build();
					
					olist.add(ovo);
					
				} while (rs.next());
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("OrderRecord(주문기록 리스트) DAO에서 오류~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return olist;
	}
	
	public String imgurlSelect(Connection conn, long productid) throws Exception {
		String imgurl = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = " SELECT DISTINCT productid, imgurl "
				+ " FROM productimg "
				+ " WHERE productid = ? ";
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, productid);
			rs = pstmt.executeQuery();
			
			if( rs.next()) {
				imgurl = rs.getString("imgurl");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("imgurl 얻어오는 메서드에서 오류");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return imgurl;
	}

	@Override
	public ArrayList<String> orderDateList(Connection conn, String memid) throws Exception {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> dlist = null;
		String orderDate = null;
		
		String sql = " SELECT DISTINCT orderdate "
				+ " FROM payrecord "
				+ " WHERE memid = ? "
				+ " ORDER BY orderdate DESC ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memid);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				dlist = new ArrayList<String>();
				
				do {					
					orderDate = rs.getString("orderdate");
					dlist.add(orderDate);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("orderDateList 메서드에서 오류~~");
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

		return dlist;
	}
	
	


	
}
