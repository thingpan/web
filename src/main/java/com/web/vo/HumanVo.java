package com.web.vo;

public class HumanVo {

	private int age;
	private String name;
	private String addr;

	public void setAge(int age) {
		this.age = age;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setAddr(String addr) {
		this.addr=addr;
	}

	public int getAge() {
	return age;
}
	public String getName() {
		return name;
	}
	public String getAddr() {
		return addr;
	}

	class Execute {

		public static void main(String[] args) {
			HumanVo human = new HumanVo();
			human.setAge(10);
			System.out.println(human.getAge());
			human.setName("이명관");
			System.out.println(human.getName());
			human.setAddr("서울특별시");
			System.out.println(human.getAddr());
		}
	}
}
