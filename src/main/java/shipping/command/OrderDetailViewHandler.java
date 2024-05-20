package shipping.command;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import shipping.domain.OrderDetailVO;
import shipping.domain.OrderRecordVO;
import shipping.service.ShippingPlaceInfoService;

public class OrderDetailViewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession hsession = request.getSession(false);
		String memid = (String)hsession.getAttribute("auth");
		String contextPath = request.getContextPath();
		String[] temp = request.getParameter("orderId").split("/");
		long[] ids = new long[temp.length];
		int[] rowcounts = null;
		String idsStr = null;
		for (int i = 0; i < ids.length; i++) {
			ids[i] = Long.parseLong(temp[i]);
			idsStr += temp[i]; 
		}
		OrderDetailVO odvo = null;
		ArrayList<OrderRecordVO> olist = null;
		try {
			ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
			odvo = service.shippingDetailViewService(memid, ids);
			olist = service.orderDetailListService(memid, ids);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("OrderDetailViewHandler에서 오류~~");
		}
		System.out.println("odvo는 ?? " + odvo);
		request.setAttribute("idsStr", idsStr);
		request.setAttribute("odvo", odvo);
		request.setAttribute("olist", olist);
		return "/userinfo/shipping/orderDetail.jsp";
	}

}
