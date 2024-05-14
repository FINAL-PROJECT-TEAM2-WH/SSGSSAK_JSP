package event.command;

import java.io.BufferedReader;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import controller.CommandHandler;
import event.domain.ApplicantDTO;
import event.domain.EventDTO;

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
			
			jsonObject = new JsonObject();
			response.getWriter().write(jsonObject.toString());
			
		}else if( method.equals("POST")) {
			
			BufferedReader br = request.getReader();
			while ((line = br.readLine()) != null) {
				jsonBuilder.append(line);
			}
			System.out.println(jsonBuilder);
			ApplicantDTO adto = new ApplicantDTO();
			LocalDateTime ldt = LocalDateTime.now();
			
			String pattern = "yyyy-MM-dd";
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern(pattern);
			
			Gson gson = new Gson();
			jsonObject = gson.fromJson(jsonBuilder.toString(), JsonObject.class);
			adto.setCmmn(jsonObject.get("entrycomment").getAsString());
			adto.setEid(jsonObject.get("eid").getAsString());
			adto.setWritingDate(ldt.format(dtf));
			
			
		}
		
		
		EventDTO edto = null;
		
		
		return null;
	}
	
}
