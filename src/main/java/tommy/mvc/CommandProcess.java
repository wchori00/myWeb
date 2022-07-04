package tommy.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// 요청 파라미터로 명령어를 전달하는 방식의 슈퍼 인터페이스

// 지난번에 명령어를 전달하는 방식으로 보면
// Action 인터페이스에 해당되는 슈퍼 인터페이스이다

public interface CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable;
	// 지난번에 명령어를 전달하는 방식으로 보면
	// execute 메서드에 해당하는 것이다

}
