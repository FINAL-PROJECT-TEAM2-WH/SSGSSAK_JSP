package shipping.command;

import java.util.ArrayList;
import java.util.LinkedHashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import shipping.domain.OrderRecordVO;
import shipping.service.ShippingPlaceInfoService;

public class OrderRecordHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession hSession = request.getSession(false);
		String memid = (String)hSession.getAttribute("auth");
		String contextPath = request.getContextPath();
		ArrayList<OrderRecordVO> olist = null;
		LinkedHashMap<String, String> dhm = null;
		try {
			ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
			olist = service.orderRecordService(memid);
			dhm = service.orderDateService(memid);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("OrderRecordHandler 메서드에서 오류~~");
		}	
		request.setAttribute("olist", olist);
		request.setAttribute("dhm", dhm);
		return "/userinfo/shipping/orderRecord.jsp";
	}
	
}
