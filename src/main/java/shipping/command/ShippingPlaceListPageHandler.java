package shipping.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import member.domain.PageDTO;
import shipping.domain.ShippingPlaceInfoDTO;
import shipping.service.ShippingPlaceInfoService;

public class ShippingPlaceListPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
		String memid = (String) memSession.getAttribute("auth");
		ArrayList<ShippingPlaceInfoDTO> spiList = null;
		PageDTO pdto = null;
		
		int currentPage = 1;
		try {
			if( request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			//memid = request.getParameter("memid");
			//System.out.println(memid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String contextPath = request.getContextPath();
		ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
		spiList = service.shippingPlaceInfoPageListService(memid, currentPage);
		pdto = service.shippingPlaceinfoPageBlockService(currentPage, memid);
		request.setAttribute("spiList", spiList);
		request.setAttribute("pdto", pdto);
//		String location = contextPath+"/userinfo/shipping/SSG_shipping_place_info.jsp";
//		response.sendRedirect(location);
		
		return "/userinfo/shipping/SSG_shipping_place_info.jsp";
	}
	
}
