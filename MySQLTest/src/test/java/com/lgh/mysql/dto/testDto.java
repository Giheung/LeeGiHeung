package com.lgh.mysql.dto;

public class testDto {

	private String id;
	private int pw;
	private String address;
	private String hobby;
	private String myself;
	
	public testDto() {
		super();
		
	}

	public testDto(String id, int pw, String address, String hobby, String myself) {
		super();
		this.id = id;
		this.pw = pw;
		this.address = address;
		this.hobby = hobby;
		this.myself = myself;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPw() {
		return pw;
	}

	public void setPw(int pw) {
		this.pw = pw;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getMyself() {
		return myself;
	}

	public void setMyself(String myself) {
		this.myself = myself;
	}
}
