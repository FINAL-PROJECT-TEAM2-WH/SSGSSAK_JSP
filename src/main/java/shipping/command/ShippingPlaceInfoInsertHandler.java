package shipping.command;

import java.io.BufferedReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import controller.CommandHandler;
import lombok.RequiredArgsConstructor;
import shipping.domain.ShippingPlaceInfoDTO;
import shipping.service.ShippingPlaceInfoService;

public class ShippingPlaceInfoInsertHandler implements CommandHandler {
	
	// 배송지 정보 추가 되었을때 그 정보값을 들고와서 테이블에 추가
	// 항상 모든 배송지 추가 + 수정은 기본배송지로 update된다.
	// 다음에서 주소입력해서 데이터 저장하는 방법 알아오기
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String line;
        StringBuilder jsonBuilder = new StringBuilder();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String method = request.getMethod();
		
		BufferedReader br = request.getReader();
		while ((line = br.readLine()) != null) {
			jsonBuilder.append(line);
		}
		
		ShippingPlaceInfoDTO dto = new ShippingPlaceInfoDTO();
		Gson gson = new Gson();
		JsonObject jsonObject = gson.fromJson(jsonBuilder.toString(), JsonObject.class);
		System.out.println(jsonObject.get("memid").getAsString());
		if( method.equals("GET")) {
			return "/shippingPlace/list.do";
		}else {
			try {
				dto.setMemid(jsonObject.get("memid").getAsString());
				dto.setAddressnick(jsonObject.get("addrnick").getAsString());
				dto.setReceiveMem(jsonObject.get("receiveMem").getAsString());
				dto.setTel(jsonObject.get("tel").getAsString());
				dto.setPostnum(jsonObject.get("postNum").getAsString());
				dto.setRoadAddress(jsonObject.get("roadAddress").getAsString());
				dto.setJibunAddress(jsonObject.get("jibunAddress").getAsString());
				dto.setDetailAddress(jsonObject.get("detailAddress").getAsString());
				
				ShippingPlaceInfoService service = ShippingPlaceInfoService.getInstance();
				int rowCount = service.insertService(dto);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(">> ShippingPlaceInfoInsert 핸들러에서 오류 발생~~");
			}
		}
		return "/shippingPlace/list.do";
	}
}
