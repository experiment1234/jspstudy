package common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
	@NoArgsConstructor
	@AllArgsConstructor //필드로 만드는 생성자 
	@Data // getter,setter,tostring 다 들어있음 
	
public class ActionForward {

	
	private String path; //어디로 갈 것인가?
	private boolean isRedirect; //redirect라면 true, forward는 false
	
}
