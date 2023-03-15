package member;

public class Member {
	private String userId;
	private String userPw;
	private String userName;
	private String birth;

	public Member() {
		
	}	
	
	public Member(String userId, String userPw, String userName, String birth) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.birth = birth;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	
	
	
	
	
}
