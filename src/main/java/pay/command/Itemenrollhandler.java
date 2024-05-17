package pay.command;

import java.io.File;
import java.io.InputStream;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;
import com.util.ConnectionProvider;

import controller.CommandHandler;
import pay.domain.EnrollDTO;
import pay.persistence.PayImpl;

public class Itemenrollhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 request.setCharacterEncoding("utf-8");
	     response.setContentType("text/html; charset=utf-8");
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
				String cateid = request.getParameter("cate");
				String brandid = request.getParameter("brand");
				String sellerid = request.getParameter("seller");
				int spp = Integer.parseInt(request.getParameter("spp"));
				int shipo = Integer.parseInt(request.getParameter("shipo"));
				
				String productn = request.getParameter("productn"); 
				String productex = request.getParameter("productex") ; 
				
				pi.insertproducttable(cateid,brandid,sellerid,spp,shipo,productn,productex);
				int optioncount = Integer.parseInt(request.getParameter("optioncount"));
				for (int i = 1; i <= optioncount; i++) {
					String optionname = request.getParameter("optionname"+i);
					String optiondes = request.getParameter("optiondes"+i);
					String refoptiondes = request.getParameter("refoptiondes"+i);
					int refoptionid = 0 ; 
					if ( refoptiondes != null  ) {
						refoptionid = pi.selectrefoptionid(optionname);
					}
					int optionprice = Integer.parseInt(request.getParameter("optionprice"+i));
					int optionstock = Integer.parseInt(request.getParameter("optionstock"+i));
					
					pi.insertproductoption(optionname,optiondes,refoptionid,optionprice,optionstock);
				}
			
			 Collection<Part> prs = request.getParts();
			 
			 for (Part part : prs) {
				 System.out.println(part.getName());
				 System.out.println(part.getHeader("Content-Disposition"));
				if (part.getHeader("Content-Disposition").contains("filename=")) {
					 if(part.getName().equals("file1")){
						 String uuid = UUID.randomUUID().toString();
			               String filename = uuid+part.getSubmittedFileName();
			               String realpath = request.getRealPath("/pay/image/" + filename);
			               System.out.println(">>>> "  + realpath);
			               if (part.getSize() > 0) {
			                   part.write( realpath ); // 저장
			                   part.delete();
			                }
			               pi.insertproductimg(realpath , "sum");

					 } else if (part.getName().equals("file2")){  
						  
						   String uuid = UUID.randomUUID().toString();
			               String filename = uuid+part.getSubmittedFileName();
			              
			               String realpath = request.getRealPath("/pay/image/" + filename);
			              
			               if (part.getSize() > 0) {
			            	   part.write(realpath);
			            	   
			                   part.delete();
			                  
			                }
			             
			               pi.insertproductimg(realpath , "other");
			            
			            }
				} 
			 }
			 
			conn.close();
			response.sendRedirect(request.getRequestURI());
			return null;
		}
		
	}
	

}
