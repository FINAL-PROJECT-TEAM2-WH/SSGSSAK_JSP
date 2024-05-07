package member.service;

// 사용자 정의 예외 클래스
// 비밀번호가 틀릴경우 예외를 발생 시키기 위해서 선언
public class InvalidPasswordException extends ServiceException{
    
    public InvalidPasswordException(String message) {
    	super(message);
    }
    
}