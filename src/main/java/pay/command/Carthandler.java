package pay.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import pay.domain.CartDTO;
import pay.persistence.PayImpl;

public class Carthandler  implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Connection conn = ConnectionProvider.getConnection();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("auth");
		String method = request.getMethod();
		String delete = "";
		if (request.getParameter("delete") != null ) {
			delete = (String) request.getParameter("delete");
		}
		
		if (method.equals("GET")) {
			ArrayList<CartDTO> al = new ArrayList<CartDTO>();
			PayImpl pi = new PayImpl(conn);
			al = pi.selectcartinfo(id);
			request.setAttribute("al", al);
			return "/pay/cart.jsp";
		} else if (method.equals("POST") && delete.equals("delete")) {
			
			response.setContentType("application/json; charset=UTF-8");
			PayImpl pi = new PayImpl(conn);
			StringBuilder sb = new StringBuilder();
			BufferedReader br = request.getReader();
			String line ;
			while ((line= br.readLine()) !=null) {
				sb.append(line);
			}
			int result = 0;
			JSONObject json = JSONObject.fromObject(sb.toString());
			JSONArray jarr = json.getJSONArray("optionid");
			for (int i = 0; i < jarr.size(); i++) {
				result += pi.deletecartinfo(id ,Integer.parseInt(jarr.getString(i)));
			}
			conn.close();
			JSONObject jo = new JSONObject();
			jo.put("data", result);
			
			response.getWriter().write(jo.toString());
		} else if (method.equals("POST") && !delete.equals("delete")) {
			response.setContentType("application/json; charset=UTF-8");
			PayImpl pi = new PayImpl(conn);
			StringBuilder sb = new StringBuilder();
			BufferedReader br = request.getReader();
			String line ;
			while ((line= br.readLine()) !=null) {
				sb.append(line);
				
			}
			int result = 0;
			
			JSONObject json = JSONObject.fromObject(sb.toString());
			JSONArray jarr = json.getJSONArray("optionId");
			JSONArray jarr2 = json.getJSONArray("quantity");
			for (int i = 0; i < jarr.size(); i++) {
				result += pi.insertcartinfo(id, Integer.parseInt(jarr.getString(i)) , Integer.parseInt(jarr2.getString(i)) );
			}
			conn.close();
			JSONObject jo = new JSONObject();
			jo.put("data", result);
			response.getWriter().write(jo.toString());
		}
		
		return null;
	}

}
