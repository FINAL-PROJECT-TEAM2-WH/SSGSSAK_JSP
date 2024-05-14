package event.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

		@WebServlet("/eventDTO")
		public class EventHandler extends HttpServlet {

		    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        response.setContentType("text/html; charset=UTF-8");
		        PrintWriter out = response.getWriter();

		        String driver = "oracle.jdbc.driver.OracleDriver";
		        String url = "jdbc:oracle:thin:@127.0.0.1:1521:orcl";
		        String id = "SYS as sysdba";
		        String pw = "1234";

		        Connection con = null;
		        Statement stmt = null;
		        ResultSet res = null;

		        try {
		            Class.forName(driver);

		            con = DriverManager.getConnection(url, id, pw);
		            stmt = con.createStatement();
		            String sql = "SELECT * FROM event";
		            res = stmt.executeQuery(sql);

		            while (res.next()) {
		                String ID = res.getString("ID");
		                String evnNm = res.getString("evnNm");
		                String evnImg = res.getString("evnImg");
		                java.sql.Date evnStrDt = res.getDate("evnStrDt");
		                java.sql.Date evnEnDt = res.getDate("evnEnDt");

		                out.print("ID : " + ID + ", ");
		                out.print("evnNm : " + evnNm + ", ");
		                out.print("evnImg : " + evnImg + ", ");
		                out.print("evnStrDt : " + evnStrDt + ", ");
		                out.print("evnEnDt : " + evnEnDt);
		                System.out.print(evnImg);
		            }

		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            try {
		                if (stmt != null) stmt.close();
		                if (con != null) con.close();
		            } catch (Exception e2) {
		                e2.printStackTrace();
		            }
		        }
		    }

		    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        doGet(request, response);
		    }
		}