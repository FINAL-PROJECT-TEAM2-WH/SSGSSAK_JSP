package shipping.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import shipping.service.ShippingPlaceInfoService;

public class ShippingStatusEditHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String contextPath = request.getContextPath();
		String location = contextPath+"/shippingPlace/list.do";
		try {
			String temp = request.getParameter("id");
			long id = Long.parseLong(temp);
			String memid = request.getParameter("memid");
			String status = request.getParameter("status");
			
			ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
			service.shippingPlaceStatusEditService(id, status, memid);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ShippingStatusEditHandler 에서 오류~~");
		}
		response.sendRedirect(location);
		return null;
	}
	
	

}
