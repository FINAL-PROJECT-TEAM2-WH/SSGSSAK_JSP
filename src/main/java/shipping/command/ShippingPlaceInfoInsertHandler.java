package shipping.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import shipping.domain.ShippingPlaceInfoDTO;
import shipping.service.ShippingPlaceInfoService;

public class ShippingPlaceInfoInsertHandler implements CommandHandler {
	
	// 배송지 정보 추가 되었을때 그 정보값을 들고와서 테이블에 추가
	// 항상 모든 배송지 추가 + 수정은 기본배송지로 update된다.
	// 다음에서 주소입력해서 데이터 저장하는 방법 알아오기
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		ShippingPlaceInfoDTO dto = new ShippingPlaceInfoDTO();
<<<<<<< HEAD
		if( method.equals("GET")) {
			return "/userinfo/shipping/SSG_shipping_place_info.jsp";
		}else {
			try {
				dto.setMemid(request.getParameter("memid"));
				dto.setAddressnick(request.getParameter("addrnick"));
				dto.setReceiveMem(request.getParameter("receiveMem"));
				dto.setTel(request.getParameter("tel"));
				dto.setPostnum(request.getParameter("postNum"));
				dto.setRoadAddress(request.getParameter("roadAddress"));
				dto.setJibunAddress(request.getParameter("jibunAddress"));
				dto.setDetailAddress(request.getParameter("detailAddress"));
				
				ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
				
				int rowCount = service.insertService(dto);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(">> ShippingPlaceInfoInsert 핸들러에서 오류 발생~~");
			}
=======
		
		try {
			dto.setMemid(request.getParameter("memid"));
			dto.setAddressnick(request.getParameter("addrnick"));
			dto.setReceiveMem(request.getParameter("receiveMem"));
			dto.setTel(request.getParameter("tel"));
			dto.setPostnum(request.getParameter("postNum"));
			dto.setRoadAddress(request.getParameter("roadAddress"));
			dto.setJibunAddress(request.getParameter("jibunAddress"));
			dto.setDetailAddress(request.getParameter("detailAddress"));
>>>>>>> aec2ff70ff7feed52466bc437ed4b5719ff70f52
			
			ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
			
			int rowCount = service.insert(dto);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> ShippingPlaceInfoInsert 핸들러에서 오류 발생~~");
		}
		
		String location = "/shipping/shippingPlace/list.do";
		response.sendRedirect(location);
		return null;
	}

}
