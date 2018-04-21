package com.sm.dao;

import java.util.List;

import com.sm.bean.School;

public interface SchoolDao {
	
	public int saveAndGeneratedKey(School school);
	
	public int batchInsert(List<School> list);
	
}
