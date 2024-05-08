package shipping.command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import net.sf.json.JSONObject;
import shipping.domain.ShippingPlaceInfoDTO;
import shipping.service.ShippingPlaceInfoService;

public class ShippingUpdateViewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("application/json");
		ShippingPlaceInfoDTO dto = null;
//		.id(id)
//		.memid(memid)
//		.addressnick(addressnick)
//		.receiveMem(receiveMem)
//		.roadAddress(roadAddress)
//		.jibunAddress(jibunAddress)
//		.detailAddress(detailAddress)
//		.tel(tel)
//		.postnum(postnum)
		try {
			String temp = request.getParameter("id");
			long id = Long.parseLong(temp);
			ShippingPlaceInfoService spiService = ShippingPlaceInfoService.getInstance();
			dto = spiService.shippingPlaceUpdateViewService(id);
			JSONObject jsonObject = new JSONObject();
			if( dto != null ) {
				jsonObject.put("id", dto.getId());
				jsonObject.put("memid", dto.getMemid());
				jsonObject.put("addressnick", dto.getAddressnick());
				jsonObject.put("receiveMem", dto.getReceiveMem());
				jsonObject.put("roadAddress", dto.getRoadAddress());
				jsonObject.put("jibunAddress", dto.getJibunAddress());
				jsonObject.put("detailAddress", dto.getDetailAddress());
				jsonObject.put("tel", dto.getTel());
				jsonObject.put("postnum", dto.getPostnum());
				jsonObject.put("status", "success");
			}else {
				jsonObject.put("status", "error");
				jsonObject.put("message", "shippingplaceinfoupdate ajax에서 오류~~ ");
			}	
		}catch( Exception e ) {
			e.printStackTrace();
			System.out.println("ShippingUpdateViewHandler 에서 오류 ~~");
		}
		return null;
	}
	
	
	
}
