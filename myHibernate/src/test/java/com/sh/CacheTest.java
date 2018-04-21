package com.sh;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sh.dao.CacheDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/application-*.xml"})
@ActiveProfiles("Hibernate-MODEL")//用于指定环境
public class CacheTest {
	@Autowired
	private CacheDao dao;
	
	@Test
	public void useSecondLevel(){
		dao.secondLevel();
	}

	@Test
	public void usequery(){
		dao.queryCache();
	}
	
}
