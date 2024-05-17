package shipping.command;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import shipping.service.ShippingPlaceInfoService;

public class OrderRecordDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession hsession = request.getSession(false);
		String memid = (String)hsession.getAttribute("auth");
		String contextPath = request.getContextPath();
		String[] temp = request.getParameter("orderId").split("/");
		long[] ids = new long[temp.length];
		int[] rowcounts = null;
		//System.out.println(Arrays.toString(temp));
		
		for (int i = 0; i < ids.length; i++) {
			ids[i] = Long.parseLong(temp[i]);
		}	
		
		try {
			ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
			rowcounts = service.orderDeleteService(memid, ids);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("OrderRecordDeleteHandler에서 오류~~");
		}
		return "/orderRecord.do";
	}
	
}
