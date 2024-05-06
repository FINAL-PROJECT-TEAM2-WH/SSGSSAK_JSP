package shipping.service;

import java.sql.Connection;

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
			
			rowCount = dao.insert(conn, dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> ShippingPlaceInfoService insert 메서드 오류~~");
		}
		JdbcUtil.close(conn);
		
		return rowCount;
	}
	
}
