package com.sh.dao;

public interface FlushModeDao {
	
	void auto();
	
	void commit();
	
	void munul();
	
	void batchInsertUseHibernate();
	
	void batchInsertUseJdbc() throws Exception;
	
//	public void batchInsertSql();
}
