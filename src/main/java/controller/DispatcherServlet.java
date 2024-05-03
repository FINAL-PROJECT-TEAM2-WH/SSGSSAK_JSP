package controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.command.CommandHandler;

/* @WebServlet("/DispatcherServlet") */ // web.xml 에 등록할거임 
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	//			URL		new ListHandler()
	public Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
       
    public DispatcherServlet() {
        super();
    }

	@Override
	public void init() throws ServletException {
		super.init();
//		System.out.println("> DispatcherServlet.init()...");
		// web.xml <servlet><init-param><param-name>path</servlet>
		String path = this.getInitParameter("path");
		String realPath = this.getServletContext().getRealPath(path);
		// application 은 jsp 4가지 내장 객체라 사용되지만 
		// java에서는 안댐 
		/*
		 * 
		 * System.out.println(realPath);
		 */
		
		Properties prop = new Properties();
		try (FileReader reader = new FileReader(realPath);){
			prop.load(reader);
		} catch (Exception e) {
			throw new ServletException();
		}
		// prop <key,value> 컬렉션 반복처리 => key 		Map<url, 실제객체> 
		
		Set<Entry<Object,Object>> set = prop.entrySet();
		Iterator<Entry<Object,Object>> ir = set.iterator();
		while ( ir.hasNext()) {
			Entry<Object, Object> entry = ir.next();
			String url = (String)entry.getKey();
			String className = (String) entry.getValue();
			Class<?> commandHandlerClass = null;
			try {
				commandHandlerClass =  Class.forName(className);
				try {
					CommandHandler commandHandler = (CommandHandler)commandHandlerClass.newInstance();
					this.commandHandlerMap.put(url, commandHandler); // 맵 추가. 
				} catch (InstantiationException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	@Override
	public void destroy() {
		super.destroy();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
//		String contextPath = request.getContextPath();
//		requestURI =  requestURI.replace(contextPath, "");
		
		int beginIdx = request.getContextPath().length();
		requestURI = requestURI.substring(beginIdx);
//		System.out.println(requestURI);
		
		//[M]VC
		CommandHandler comHandler = this.commandHandlerMap.get(requestURI);
		
		String view = null ; 
		try {
			view = comHandler.process(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		// 리다이렉트 또는 포워딩 
		if ( view != null ) {
			// 포워딩 
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
