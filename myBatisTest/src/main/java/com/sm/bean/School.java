package com.sm.bean;

import java.util.Date;
import java.util.List;

public class School {
	private int id;
	private String schoolName;
	private Date creatDateTime;
	private String remark;
	private List<ClassInfo> classInfos;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public Date getCreatDateTime() {
		return creatDateTime;
	}

	public void setCreatDateTime(Date creatDateTime) {
		this.creatDateTime = creatDateTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public List<ClassInfo> getClassInfos() {
		return classInfos;
	}

	public void setClassInfos(List<ClassInfo> classInfos) {
		this.classInfos = classInfos;
	}
	
}


