package event.command;

import java.io.BufferedReader;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import controller.CommandHandler;
import event.domain.ApplicantDTO;
import event.service.ApplicantService;
import member.domain.PageDTO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ApplicantHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		JsonObject jsonObject = null;
		String method = request.getMethod();
		//System.out.println(method);
		String line;
        StringBuilder jsonBuilder = new StringBuilder();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		if( method.equals("GET")) {
			ArrayList<ApplicantDTO> alist = null;
			HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
			String memid = (String) memSession.getAttribute("auth");
			ApplicantDTO adto = new ApplicantDTO();
			jsonObject = new JsonObject();
			PageDTO pdto = null;
			ApplicantService aService = ApplicantService.getInstance();
			BufferedReader br = request.getReader();
			while ((line = br.readLine()) != null) {
				jsonBuilder.append(line);
			}
			// 만약 여기로 넘어오면 무조건 1번 페이지부터 시작
			int currentPage = 1;
			
			String eid = request.getParameter("eid");
			alist = aService.applicantSelectService(eid, currentPage);
			pdto = aService.pageBlock(eid, currentPage);
			JSONObject json = new JSONObject();
			JSONArray jsonArray = new JSONArray();
			Iterator<ApplicantDTO> ir = alist.iterator();
			while (ir.hasNext()) {
				
				ApplicantDTO applicantDTO = (ApplicantDTO) ir.next();
				//System.out.println(applicantDTO.getName()); 
				json.put("comment", applicantDTO.getCmmn());
				json.put("name", applicantDTO.getName());
				json.put("WritingDate", applicantDTO.getWritingDate());
				json.put("id", applicantDTO.getId());
				jsonArray.add(json);
			}
			jsonArray.add(pdto);
			response.getWriter().write(jsonArray.toString());
			//System.out.println("jsonArray : " + jsonArray);
		}else if( method.equals("POST")) {
			HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
			String memid = (String) memSession.getAttribute("auth");
			
			BufferedReader br = request.getReader();
			while ((line = br.readLine()) != null) {
				jsonBuilder.append(line);
			}
			//System.out.println(jsonBuilder);
			ApplicantDTO adto = new ApplicantDTO();
			LocalDateTime ldt = LocalDateTime.now();
			
			String pattern = "yyyy-MM-dd";
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern(pattern);
			
			Gson gson = new Gson();
			jsonObject = gson.fromJson(jsonBuilder.toString(), JsonObject.class);
			adto.setCmmn(jsonObject.get("entrycomment").getAsString());
			adto.setEid(jsonObject.get("eid").getAsString());
			adto.setWritingDate(ldt.format(dtf));
			adto.setMemid(memid);
			
			ApplicantService applicantService = ApplicantService.getInstance();
			applicantService.applicantInsertService(adto);
			response.getWriter().write(jsonObject.toString());
		}	
		return null;
	}
	
}
