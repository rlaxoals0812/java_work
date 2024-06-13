package test.friend.dto;

public class FriendDto {
	private int num;
	private String name;
	private int callnum;
	//디폴트 생성자
	public FriendDto() {}
	public FriendDto(int num, String name, int callnum) {
		super();
		this.num = num;
		this.name = name;
		this.callnum = callnum;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCallnum() {
		return callnum;
	}
	public void setCallnum(int callnum) {
		this.callnum = callnum;
	}
}
