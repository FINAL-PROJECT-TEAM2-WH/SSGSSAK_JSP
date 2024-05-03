package days07.guestbook.service;

// 사용자 정의 예외 클래스
// 메시지를 찾을 수 없을 경우에 예외 발생시킨다. 
public class MessageNotFoundException extends ServiceException{
    
    public MessageNotFoundException(String message) {
    	super(message);
    }
    
}
