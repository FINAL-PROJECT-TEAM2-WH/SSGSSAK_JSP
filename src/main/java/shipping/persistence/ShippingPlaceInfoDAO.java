package shipping.persistence;

import java.sql.Connection;
import java.util.ArrayList;

import member.domain.PageDTO;
import shipping.domain.ShippingPlaceInfoDTO;

public interface ShippingPlaceInfoDAO {
	
	int insert(Connection conn, ShippingPlaceInfoDTO dto) throws Exception;
	
	int defaultShippingUpdate(Connection conn, String memid) throws Exception;
	
	int update(Connection conn, ShippingPlaceInfoDTO dto) throws Exception;

	ArrayList<ShippingPlaceInfoDTO> shippingPlaceInfoList(Connection conn, String memid) throws Exception; 
	
	ShippingPlaceInfoDTO ShippingPlaceUpView(Connection conn, long id) throws Exception;

	int shippingStatusEdit(Connection conn, long id, String status, String memid) throws Exception;
	
	int shippingPlaceDelete(Connection conn, long id) throws Exception;
	
	int shippingPlaceTotalCount(Connection conn) throws Exception;
	
	ArrayList<ShippingPlaceInfoDTO>  shippingPlaceInfoPageList(Connection conn, String memid, int currentPage, int numberPerPage) throws Exception;

	PageDTO pageBlock(Connection conn, int currentPage, String memid) throws Exception;
	
	int getTotalPages(Connection conn, int numberPerPage, String memid) throws Exception;
}
