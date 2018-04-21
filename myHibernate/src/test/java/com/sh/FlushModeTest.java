package com.sh;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sh.dao.FlushModeDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/application-*.xml"})
@ActiveProfiles("Hibernate-MODEL")//用于指定环境
public class FlushModeTest {
	
	@Autowired
	private FlushModeDao dao;
	@Test
	public void auto() {
		dao.auto();
	}
	
	@Test
	public void commit(){
		dao.commit();
	}
	
	@Test
	public void batchInsertUseJdbc(){
		try {
			dao.batchInsertUseJdbc();
		} catch (Exception e) {
			e.printStackTrace();
		}
	} 
	
	@Test
	public void batchInsertUseHibernate(){
		this.dao.batchInsertUseHibernate();
	}
	
	
}
