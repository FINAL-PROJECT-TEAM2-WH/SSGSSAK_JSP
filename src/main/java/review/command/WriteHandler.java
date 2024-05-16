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

            Collection<Part> parts = request.getParts();
            String productId = null;
            String memid = null;
            String productOptionId = null;
            String reviewContent = null;
            String reviewType = null;
            String grade = null;
            String q1 = null;
            String q2 = null;
            String q3 = null;

            for (Part part : parts) {
                if (part.getName().equals("productId")) {
                    productId = request.getParameter(part.getName());
                } else if (part.getName().equals("memid")) {
                    memid = request.getParameter(part.getName());
                } else if (part.getName().equals("productOptionId")) {
                    productOptionId = request.getParameter(part.getName());
                } else if (part.getName().equals("reviewContent")) {
                    reviewContent = request.getParameter(part.getName());
                } else if (part.getName().equals("reviewType")) {
                    reviewType = request.getParameter(part.getName());
                } else if (part.getName().equals("grade")) {
                    grade = request.getParameter(part.getName());
                } else if (part.getName().equals("q1")) {
                    q1 = request.getParameter(part.getName());
                } else if (part.getName().equals("q2")) {
                    q2 = request.getParameter(part.getName());
                } else if (part.getName().equals("q3")) {
                    q3 = request.getParameter(part.getName());
                }
            }

            ReviewDAOImpl dao = new ReviewDAOImpl(conn);

            if (productId != null && memid != null && productOptionId != null && reviewContent != null &&
                reviewType != null && grade != null && q1 != null && q2 != null && q3 != null) {

                long prodId = Long.parseLong(productId);
                int prodOptionId = Integer.parseInt(productOptionId);
                double grd = Double.parseDouble(grade);
                int ques1 = Integer.parseInt(q1);
                int ques2 = Integer.parseInt(q2);
                int ques3 = Integer.parseInt(q3);

                dao.insertReview(prodId, memid, prodOptionId, reviewContent, reviewType, grd, ques1, ques2, ques3);

                for (Part part : parts) {
                    if (part.getHeader("Content-Disposition").contains("filename=")) {
                        UUID uuid = UUID.randomUUID();
                        String fileName = part.getSubmittedFileName();
                        String realPath = request.getServletContext().getRealPath("/review/image/" + fileName);
                        System.out.println("File path: " + realPath);
                        long size = part.getSize();
                        if (size > 0) {
                            part.write(realPath);
                            part.delete();
                        }
                        dao.insertReviewImg(realPath);
                    }
                }
            }

            JdbcUtil.close(conn);
            request.setAttribute("success", true);
            return "/review/review.jsp";
        }
    }
}
