package com.sh.dao;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.sh.bean.Book;
import com.sh.bean.UserInfo;

@Repository
public class FlushModeDaoImpl implements FlushModeDao {
	
	private static final Logger log = LogManager.getLogger();
    @PersistenceContext
    private EntityManager emf;
	
	
	@Override
	public void auto() {
		log.info("JPA 刷新模式:"+this.emf.getFlushMode());
		UserInfo u = new UserInfo();
    	u.setAge(22);
    	u.setIdCard("610113199005042640");
    	u.setPhone("18392036131");
    	u.setSex("女");
    	u.setUsername("zj");
    	
    	this.emf.persist(u);
		log.info("--------------插入一条数据--------------------");
		this.emf.createQuery("from Book", Book.class).getResultList();;
		this.emf.createQuery("from UserInfo", UserInfo.class).getResultList();
	}

	@Override
	public void commit() {
		Session session = this.emf.unwrap( Session.class );
		log.info("Hibernate 刷新模式:"+this.emf.getFlushMode());
		Book b = new Book();
		b.setName("实战java");
		b.setSn("sds-sd-s-d-f-df-s");
		b.setCreateTime(new Date());
    	session.save(b);
    	session.createQuery("from UserInfo", UserInfo.class).getResultList();
    	session.createQuery("from Book", Book.class).getResultList();;
	}

	@Override
	public void munul() {
		// TODO Auto-generated method stub
		
	}

}
