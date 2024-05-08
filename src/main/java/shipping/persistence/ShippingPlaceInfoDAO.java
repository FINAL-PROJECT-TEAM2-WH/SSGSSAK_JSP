package shipping.persistence;

import java.sql.Connection;
import shipping.domain.ShippingPlaceInfoDTO;

public interface ShippingPlaceInfoDAO {
	
	int insert(Connection conn, ShippingPlaceInfoDTO dto) throws Exception;
	
	int defaultShippingUpdate(Connection conn, String memid) throws Exception;
<<<<<<< HEAD
	
	ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoList(Connection conn, String memid) throws Exception; 
	
	ShippingPlaceInfoDTO ShippingPlaceUpView(Connection conn, long id) throws Exception;
=======
>>>>>>> aec2ff70ff7feed52466bc437ed4b5719ff70f52
}
