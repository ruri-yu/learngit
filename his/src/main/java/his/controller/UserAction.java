package his.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/user")
public class UserAction {

	@RequestMapping("/login")
	public String login(Model model, HttpServletRequest request) {
		// shiro在认证过程中出现错误后将异常类路径通过request返回
		String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
		if(exceptionClassName!=null){
			if (UnknownAccountException.class.getName().equals(exceptionClassName)) {
				//throw new Exception("账号不存在");
				model.addAttribute("msg", "账号不存在");
			} else if (IncorrectCredentialsException.class.getName().equals(
					exceptionClassName)) {
				//throw new Exception("用户名/密码错误");
				model.addAttribute("msg", "用户名/密码错误");
			} else{
				//throw new Exception();//最终在异常处理器生成未知错误
				model.addAttribute("msg", "未知错误");
			}
		}
		return "forward:/login.jsp";
	}
	
	@RequestMapping("/home")
	public String home(){
		return "forward:/home.jsp";
	}

}
