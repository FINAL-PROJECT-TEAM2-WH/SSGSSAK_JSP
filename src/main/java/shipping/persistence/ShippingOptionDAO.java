package shipping.persistence;

import java.sql.SQLException;

import shipping.domain.ShippingOptionDTO;

public interface ShippingOptionDAO {
	
	ShippingOptionDTO view(long productcode) throws SQLException;
}
