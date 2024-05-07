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

	public int insert(ShippingPlaceInfoDTO dto) {
		
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
	
	public ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoList(String memid){
		Connection conn = null;
		ArrayList<ShippingPlaceInfoDTO> list = null;
		try {
			ShippingPlaceInfoDAOImpl dao = ShippingPlaceInfoDAOImpl.getInstance();
			list = dao.shippingPlaceInfoList(conn, memid);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(">> ShippingPlaceInfoService에서 list 메서드 오류~~");
		}
		JdbcUtil.close(conn);
		return list;
	}
	
}
