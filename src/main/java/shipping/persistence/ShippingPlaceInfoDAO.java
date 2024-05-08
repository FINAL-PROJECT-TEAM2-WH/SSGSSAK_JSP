package shipping.persistence;

import java.sql.Connection;
import java.util.ArrayList;

import shipping.domain.ShippingPlaceInfoDTO;

public interface ShippingPlaceInfoDAO {
	
	int insert(Connection conn, ShippingPlaceInfoDTO dto) throws Exception;
	
	int defaultShippingUpdate(Connection conn, String memid) throws Exception;
	
	ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoList(Connection conn, String memid) throws Exception; 
	
	ShippingPlaceInfoDTO ShippingPlaceUpView(Connection conn, long id) throws Exception;
}
