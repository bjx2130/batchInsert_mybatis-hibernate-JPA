package com.sh.dao;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sh.bean.Book;

@Repository
public class CacheDaoImpl implements CacheDao {
	
	private static final Logger log = LogManager.getLogger();
    @Autowired
    private SessionFactory sessionFactory;
    
	@Override
	public void secondLevel() {
		Session session = this.sessionFactory.getCurrentSession();
		Book b = session.get(Book.class, 1);
		log.info("---------------------1");
		b.setName("修改"+b.getName());
		session.flush();
		session.evict(b);//缓存里的数据修改后，使用evict()释放缓存
		log.info("---------------------2");
		//session.clear();
		session.get(Book.class, 1);
		log.info("---------------------3");
	}
	
	
	/**
	 * 查询缓存的生命周期，当前关联的表发生修改或是 查询条件改变时，那么查询缓存生命周期结束
	 */
	@Override
	public void queryCache() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Book> list = session.createQuery("from Book",Book.class).setCacheable(true).getResultList();
		list.get(1).setName("查询缓存修改");
		session.flush();
		log.info("---------------------1");
		session.createQuery("from Book",Book.class).setCacheable(true).getResultList();
		log.info("---------------------2");
		
	}

}
