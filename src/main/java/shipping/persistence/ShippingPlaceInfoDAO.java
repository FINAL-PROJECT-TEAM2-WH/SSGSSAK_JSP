package shipping.persistence;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import member.domain.PageDTO;
import shipping.domain.OrderDetailVO;
import shipping.domain.OrderRecordVO;
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
	
	ArrayList<OrderRecordVO> orderList(Connection conn, String memid) throws Exception;
	 
	LinkedHashMap<String, String> orderDateList(Connection conn, String memid) throws Exception;
	
	int[] orderRecordDelete(Connection conn, String memid, long[] ids) throws Exception;
	
	OrderDetailVO shippingDetailView(Connection conn, String memid, long[] ids) throws Exception;
	
	ArrayList<OrderRecordVO> orderDetailList(Connection conn, String memid, long[] ids) throws Exception;
}
