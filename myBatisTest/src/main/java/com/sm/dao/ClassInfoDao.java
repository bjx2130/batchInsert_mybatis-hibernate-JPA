package com.sm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sm.bean.ClassInfo;

public interface ClassInfoDao {
	
	public int save(ClassInfo classInfo);
	
	public List<ClassInfo> queryAll();
	
}

  