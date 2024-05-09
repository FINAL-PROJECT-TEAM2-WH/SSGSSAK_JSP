package mainmiddlebar.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mainmiddlebarhenler")
public class mainmiddlebarhenler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public mainmiddlebarhenler() {
        super();
  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response, Object document) throws ServletException, IOException {
		$(document).ready(function(){
		  
		    $('.cmmain_tab').click(function(){
		        // 클릭한 탭의 텍스트 가져오기
		        var tabName = $(this).text(); 
		        
		        // AJAX 요청
		        $.ajax({
		            url: '', // 여기에 API 엔드포인트를 넣어주세요
		            type: 'GET',
		            data: { tab: tabName }, // 선택한 탭 이름을 데이터로 전송
		            success: function(response){
		                // 성공적으로 데이터를 가져왔을 때 실행할 코드
		                console.log(response); // 혹은 다른 동작을 수행할 수 있습니다
		                // 여기에 가져온 데이터를 처리하는 코드를 추가하세요
		            },
		            error: function(xhr, status, error){
		                // 에러 발생 시 실행할 코드
		                console.error(error); // 에러 로그 출력 혹은 다른 처리 가능
		            }
		        });
		    });
		});
	}

	
	private Object function() {
		// TODO Auto-generated method stub
		return null;
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
