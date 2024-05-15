package pay.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import controller.CommandHandler;
import pay.domain.EnrollDTO;
import pay.persistence.PayImpl;

public class Itemenrollhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("왓냐?");
		String method =request.getMethod();
		Connection conn = ConnectionProvider.getConnection();
		if (method.equals("GET")) {
			PayImpl pi = new PayImpl(conn);
			ArrayList<EnrollDTO> al = new ArrayList<>();
			al = pi.selectcateinfo();
			request.setAttribute("al", al);
			al = pi.selectbrandinfo();
			request.setAttribute("al2", al);
			al= pi.selectsellerinfo();
			request.setAttribute("al3", al);
			al= pi.selectspecialpinfo();
			request.setAttribute("al4", al);
			al = pi.selectshipinfo();
			request.setAttribute("al5", al);
			conn.close();
			return "/pay/itemenroll.jsp";
		} else {
			PayImpl pi = new PayImpl(conn);
			int cateid = Integer.parseInt(request.getParameter("cate"));
			int brandid = Integer.parseInt(request.getParameter("brand"));
			int sellerid = Integer.parseInt(request.getParameter("seller"));
			int spp = Integer.parseInt(request.getParameter("spp"));
			int shipo = Integer.parseInt(request.getParameter("shipo"));
			
			String productn = request.getParameter("productn") ; 
			String productex = request.getParameter("productex") ; 
			
			
			
			pi.insertproducttable(cateid,brandid,sellerid,spp,shipo,productn,productex);
		}
		return null;
	}

}
