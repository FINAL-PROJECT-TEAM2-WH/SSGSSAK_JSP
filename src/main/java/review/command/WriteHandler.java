package review.command;

import java.sql.Connection;
import java.util.Collection;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.util.ConnectionProvider;
import com.util.JdbcUtil;
import controller.CommandHandler;
import review.persistence.ReviewDAOImpl;

public class WriteHandler implements CommandHandler {

	@Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String method = request.getMethod();
        Connection conn = ConnectionProvider.getConnection();
        if (method.equals("GET")) {
            return "/review/review.jsp";
        } else {
            request.setCharacterEncoding("UTF-8");
            
            // 파라미터값 추출
            String productId = request.getParameter("productId");
            String memid = request.getParameter("memid");
            String productOptionId = request.getParameter("productOptionId");
            String reviewContent = request.getParameter("reviewContent");
            String reviewType = request.getParameter("reviewType");
            String grade = request.getParameter("grade");
            String q1 = request.getParameter("q1");
            String q2 = request.getParameter("q2");
            String q3 = request.getParameter("q3");
            
            // 객체생성
            ReviewDAOImpl dao = new ReviewDAOImpl(conn);
            
            long prodId = Long.parseLong(productId);
            int prodOptionId = Integer.parseInt(productOptionId);
            double grd = Double.parseDouble(grade);
            int ques1 = Integer.parseInt(q1);
            int ques2 = Integer.parseInt(q2);
            int ques3 = Integer.parseInt(q3);
            //데이터 삽입
            dao.insertReview(prodId, memid, prodOptionId, reviewContent, reviewType, grd, ques1, ques2, ques3);

            //이미지 파일처리	모든파트가져오는함수
            Collection<Part> parts = request.getParts();
            for (Part part : parts) {
            	//헤더에 파일name이 포함돼있는지확인
                if (part.getHeader("Content-Disposition").contains("filename=")) {
                    String fileName = part.getSubmittedFileName();
                    String realPath = request.getServletContext().getRealPath("/review/image/" + fileName);
                    System.out.println("File path: " + realPath);
                    long size = part.getSize();
                    if (size > 0) {
                        part.write(realPath);
                        part.delete();
                    }
                    dao.insertReviewImg("\\SSGSSAK\\review\\image\\" + fileName);
                }
            }

            JdbcUtil.close(conn);
            request.setAttribute("success", true);
            return "/review/review.jsp";
        }
    }
}