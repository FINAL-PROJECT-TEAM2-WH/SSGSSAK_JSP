package event.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandHandler;
import event.domain.ApplicantDTO;
import event.service.ApplicantService;
import member.domain.PageDTO;

public class EventListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int currentPage = 1;
		String eid = null;
		ArrayList<ApplicantDTO> alist = null;
		PageDTO pdto = null;
		try {
			if( request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
			eid = request.getParameter("eid");
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			ApplicantService service = ApplicantService.getInstance();
			alist = service.applicantSelectService(eid, currentPage);
			pdto = service.pageBlock(eid, currentPage);
			request.setAttribute("alist", alist);
			request.setAttribute("pdto", pdto);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("EventListHadler에서 오류!");
		}
		
		return "/event/event2.jsp";
	}
	
	

}
