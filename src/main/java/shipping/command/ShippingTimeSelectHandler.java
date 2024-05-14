package shipping.command;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CommandHandler;
import shipping.domain.ShippingPlaceInfoDTO;
import shipping.service.ShippingPlaceInfoService;

public class ShippingTimeSelectHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String contextPath = request.getContextPath();
		
		// 여기 들어왔을때 그냥 쓱배송인지, 새벽배송인지에 따라서 쓱배송이면 현재 날짜부터 5일, 새벽배송이면 내일부터 5일을 계산
		// jsp 페이지 똑같이 준다.
		HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
		String memid = (String) memSession.getAttribute("auth");
		LocalDateTime ldt = LocalDateTime.now();
		String pattern = "M월 dd일 ";
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern(pattern);
		ArrayList<String> dateList = new ArrayList();
		for (int i = 0; i < 5; i++) {
			LocalDateTime futureDate = ldt.plusDays(i);
			String monthDate = futureDate.format(dtf);
			String dayOfWeek = futureDate.getDayOfWeek().getDisplayName(TextStyle.FULL, Locale.KOREA);
			String mddow = monthDate + " (" +dayOfWeek + ")";
			dateList.add(mddow);
		}
		
		ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
		ArrayList<ShippingPlaceInfoDTO> spiList = service.shippingPlaceInfoListService(memid);
		request.setAttribute("dateList", dateList);	
		request.setAttribute("spiList", spiList);
		return "/userinfo/shipping/SSG_shipping_select.jsp";
		
	}
}
