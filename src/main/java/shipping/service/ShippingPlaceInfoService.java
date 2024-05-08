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
		}
		JdbcUtil.close(conn);
		return rowCount;
	}
	
<<<<<<< HEAD

	// 배송지 정보 리스트
	public ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoListService(String memid){
		Connection conn = null;
		ArrayList<ShippingPlaceInfoDTO> list = null;
		try {
			conn = ConnectionProvider.getConnection();
=======
	public ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoList(String memid){
		Connection conn = null;
		ArrayList<ShippingPlaceInfoDTO> list = null;
		try {
>>>>>>> 080add387fa297d852a10bdd4d2e8d364a81ee77
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			list = dao.shippingPlaceInfoList(conn, memid);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(">> ShippingPlaceInfoService에서 list 메서드 오류~~");
		}
		JdbcUtil.close(conn);
		return list;
	}
	
<<<<<<< HEAD
	// 배송수정페이지
	public ShippingPlaceInfoDTO shippingPlaceUpdateViewService(long id) {
		ShippingPlaceInfoDTO dto = null;
		int rowCount = 0;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			dto = dao.ShippingPlaceUpView(conn, id);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> 서비스에서 shippingPlaceUpdateView 이 메서드에서 오류~~");
		}
		
		JdbcUtil.close(conn);
		return dto;
	}
	
	
=======
>>>>>>> 080add387fa297d852a10bdd4d2e8d364a81ee77
}
