package mainpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;

public class MainPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		try {
//			ProductListService service = ProductListService.getInstance();
//			ArrayList<MajorCateDTO> mjcList = service.selectMajorCate();
//			System.out.println("mjcList = " +  mjcList);
//			request.setAttribute("mjcList", mjcList);
//		} catch (Exception e) {
//			e.printStackTrace();
//			System.out.println("카테고리못받아옴");
//		}


		return "/main/mainPage/mainPage.jsp";
	}

}
