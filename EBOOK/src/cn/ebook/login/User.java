package cn.ebook.login;

public class User {
	private String username;	//用户使用用户名
	private String password;	//用户使用用户密码

	public String getUsername() {	//获取用户名
		return username;
	}

	public void setUsername(String username) {	//设置用户名
		this.username = username;
	}

	public String getPassword() {		//获取用户密码
		return password;
	}

	public void setPassword(String password) {		//设置用户密码
		this.password = password;
	}
}
