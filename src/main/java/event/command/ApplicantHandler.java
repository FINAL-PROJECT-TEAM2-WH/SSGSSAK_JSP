package event.command;

import java.io.BufferedReader;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import controller.CommandHandler;
import event.domain.ApplicantDTO;
import event.domain.EventDTO;
import event.service.ApplicantService;
import net.sf.json.JSONObject;
import oracle.net.aso.a;

public class ApplicantHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		JsonObject jsonObject = null;
		String method = request.getMethod();
		System.out.println(method);
		String line;
        StringBuilder jsonBuilder = new StringBuilder();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		if( method.equals("GET")) {
			HttpSession memSession = request.getSession(false); // 세션이 없으면 새로 생성하지 않음
			String memid = (String) memSession.getAttribute("auth");
			ApplicantDTO adto = new ApplicantDTO();
			jsonObject = new JsonObject();
			ApplicantService aService = ApplicantService.getInstance();
			BufferedReader br = request.getReader();
			while ((line = br.readLine()) != null) {
				jsonBuilder.append(line);
			}
			
			String eid = request.getParameter("eid");
			adto = aService.applicantSelectService(memid, eid);
			
			JSONObject json = new JSONObject();
			json.put("comment", adto.getCmmn());
			json.put("name", adto.getName());
			json.put("WritingDate", adto.getWritingDate());
			
			response.getWriter().write(json.toString());
			
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
