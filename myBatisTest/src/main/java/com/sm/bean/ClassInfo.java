package com.sm.bean;

public class ClassInfo {
	
	private int id;
	private String className;
	private int totalPerson;
	private School school;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getTotalPerson() {
		return totalPerson;
	}
	public void setTotalPerson(int totalPerson) {
		this.totalPerson = totalPerson;
	}
	public School getSchool() {
		return school;
	}
	public void setSchool(School school) {
		this.school = school;
	}
	
	@Override
	public String toString(){
		return this.getId()+"  -->  "+ this.school.getSchoolName() + "  ---->   "+this.getClassName();
	}

}
