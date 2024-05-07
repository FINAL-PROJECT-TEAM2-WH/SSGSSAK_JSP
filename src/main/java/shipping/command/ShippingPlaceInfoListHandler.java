package shipping.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import shipping.domain.ShippingPlaceInfoDTO;
import shipping.service.ShippingPlaceInfoService;

public class ShippingPlaceInfoListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 회원의 배송지 정보 뿌리기
		HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
		String memid = null;
		memid = (String)memSession.getAttribute("auth");
		
		ShippingPlaceInfoService spiService = ShippingPlaceInfoService.getInstance();
		ArrayList<ShippingPlaceInfoDTO> spiList = spiService.shippingPlaceInfoList(memid);
		
		request.setAttribute("spiList", spiList);
		
		return "";
	}

}
