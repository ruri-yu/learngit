package his.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.realm.AuthenticatingRealm;

public class CustomRealm1 extends AuthenticatingRealm {
	
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		//获取用户名
		String username = (String) token.getPrincipal();
		//模拟数据:假设aaa才是正确的用户名
		if (!"aaa".equals(username)) {
			//用户名不存在
			return null;
		}
		//判断密码
		String password ="123";
		
		AuthenticationInfo info = new SimpleAuthenticationInfo(username,password,"myrealm");
		
		return info;
	}


}
