package com.sm.service;

import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sm.bean.School;

@Service
public class BatchDaoImpl implements BatchDao{
	
	private static final Logger log = LogManager.getLogger();
	
	@Autowired
	private SqlSessionFactoryBean sessionFactor; 
	
	
	/**
	 * 批量插入1万条 10秒钟
	 */
	public void insert() throws Exception{
		
		SqlSessionFactory sessionFactory = sessionFactor.getObject();
		SqlSession session =  sessionFactory.openSession();

		
		log.info("------------ 开始执行方法 [ {} ]--------","test");
		long s = System.currentTimeMillis();
		for (int i = 0; i < 10000; i++) {
			School sc =new School();
			sc.setSchoolName("西京公司");
			sc.setCreatDateTime(new Date());
			sc.setRemark("也就是普通学校！！！");
			session.insert("saveAndGeneratedKey",sc);
			
			if(i%1000==0){
				session.flushStatements();//
				session.clearCache();
			}
		}
		
		long e = System.currentTimeMillis();
		log.info("------------ 结束执行方法 [ {} ] 耗时：{} 毫秒   ------------- " ,
				"",(e-s)/1000);
	}
	
}
