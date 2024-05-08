package shipping.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.util.JdbcUtil;

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
		try {
			rowCount = daoImpl.defaultShippingUpdate(conn, memid);
					
			String sql = " INSERT INTO shippingPlaceInformation ( id, memid, addressNick, receiveMem, tel, postNum, defaultShipping, roadAddress, jibunAddress, detailAddress ) "
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
	
	
	

}
