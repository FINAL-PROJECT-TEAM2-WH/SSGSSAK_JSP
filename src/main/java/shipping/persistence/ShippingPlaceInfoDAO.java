package shipping.persistence;

import java.sql.Connection;
import shipping.domain.ShippingPlaceInfoDTO;

public interface ShippingPlaceInfoDAO {
	
	int insert(Connection conn, ShippingPlaceInfoDTO dto) throws Exception;
	
	int defaultShippingUpdate(Connection conn, String memid) throws Exception;
}
