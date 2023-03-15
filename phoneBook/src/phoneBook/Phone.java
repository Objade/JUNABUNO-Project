package phoneBook;

public class Phone {
	
	private String name;
	private String phoneNum;
	private int idx;
	
	public Phone() {
		
	}
	

	public Phone(int idx, String name, String phoneNum) {
		this.idx = idx;
		this.name = name;
		this.phoneNum = phoneNum;	
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	

}
