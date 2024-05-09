package shipping.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;
import shipping.domain.ShippingPlaceInfoDTO;
import shipping.persistence.ShippingPlaceInfoDAOImpl;

public class ShippingPlaceInfoService {
	
	private static ShippingPlaceInfoService instance = null;
	
	private ShippingPlaceInfoService() {}
	
	public static ShippingPlaceInfoService getInstance() {
		
		if(instance == null) {
			instance = new ShippingPlaceInfoService();
		}
		return instance;
	}
	
	// 배송지 정보 추가
	public int insertService(ShippingPlaceInfoDTO dto) {
		
		Connection conn = null;
		int rowCount = 0;
		
		try {
			conn = ConnectionProvider.getConnection();
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			
			System.out.println(conn);
			rowCount = dao.insert(conn, dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> ShippingPlaceInfoService insert 메서드 오류~~");
		}finally {
			JdbcUtil.close(conn);
		}
		return rowCount;
	}
	

	// 배송지 정보 리스트
	public ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoListService(String memid){
		Connection conn = null;
		System.out.println("리스트.do 요청 발생!");
		ArrayList<ShippingPlaceInfoDTO> list = null;
		try {
			conn = ConnectionProvider.getConnection();
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			list = dao.shippingPlaceInfoList(conn, memid);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(">> ShippingPlaceInfoService에서 list 메서드 오류~~");
		}finally {
			JdbcUtil.close(conn);
		}
		return list;
	}
	

	// 배송수정페이지
	public ShippingPlaceInfoDTO shippingPlaceUpdateViewService(long id) {
		ShippingPlaceInfoDTO dto = null;
		int rowCount = 0;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			dto = dao.ShippingPlaceUpView(conn, id);
			JdbcUtil.commit(conn);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> 서비스에서 shippingPlaceUpdateView 이 메서드에서 오류~~");
		}finally {
			JdbcUtil.close(conn);
		}
		return dto;
	}
	
	public int shippingPlaceUpdateService(ShippingPlaceInfoDTO dto) {
		int rowCount = 0;
		//System.out.println("update서비스 들어옴");
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			rowCount = dao.update(conn, dto);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> 서비스에서 shippingPlaceUpdate 이 메서드에서 오류~~");
		}finally {
			JdbcUtil.close(conn);
		}
			

		return rowCount;
	}
	


	public int shippingPlaceStatusEditService(long id, String status, String memid) {
		int rowCount = 0;
		
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			rowCount = dao.shippingStatusEdit(conn, id, status, memid);
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("shippingPlaceStatusEditService 이 메서드에서 오류~~");
		}finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
	
	public int shippingPlaceDeleteService(long id) {
		int rowCount = 0;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			rowCount = dao.shippingPlaceDelete(conn, id);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("shippingPlaceDeleteService 이 메서드에서 오류~~");
		} finally {
			JdbcUtil.close(conn);
		}
		
		return rowCount;
	}
	
}
