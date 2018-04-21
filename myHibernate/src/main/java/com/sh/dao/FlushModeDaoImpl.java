package com.sh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.Date;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.CacheMode;
import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.SessionFactoryUtils;
import org.springframework.stereotype.Repository;

import com.sh.bean.Book;
import com.sh.bean.TestBean;
import com.sh.bean.UserInfo;

@Repository
public class FlushModeDaoImpl implements FlushModeDao {
	
	private static final Logger log = LogManager.getLogger();
    @Autowired
    private SessionFactory sessionFactory;
	
	
	@Override
	public void auto() {
		Session session = sessionFactory.getCurrentSession();
		
		log.info("Hibernate 刷新模式:"+session.getFlushMode());
		UserInfo u = new UserInfo();
    	u.setAge(22);
    	u.setIdCard("610113199005042640");
    	u.setPhone("18392036131");
    	u.setSex("女");
    	u.setUsername("zj");
    	
    	/**
    	 * 若记录的id是由底层数据库使用自增的方式生成的，
    	 * 则在save()方法后，就会立即发送insert语句，
    	 */
    	session.save(u);
		session.createQuery("from Book", Book.class).getResultList();;
		session.createQuery("from UserInfo", UserInfo.class).getResultList();
	}

	@Override
	public void commit() {
		Session session = sessionFactory.getCurrentSession();
		//修改FlushMode
		session.setHibernateFlushMode(FlushMode.COMMIT);
		
		log.info("Hibernate 刷新模式:"+session.getFlushMode());
		Book b = new Book();
		b.setName("实战java");
		b.setSn("sds-sd-s-d-f-df-s");
		b.setCreateTime(new Date());
    	session.save(b);
    	b.setName("实战java书名");
    	session.createQuery("from Book", Book.class).getResultList();;
    	session.createQuery("from UserInfo", UserInfo.class).getResultList();
	}

	@Override
	public void munul() {
		// TODO Auto-generated method stub
	}
	
	
	/**
	 * 经过测试 1百万条插入时间 127秒
	 */
	public void batchInsertUseHibernate(){
		
		Session session = sessionFactory.getCurrentSession();
		session.setHibernateFlushMode(FlushMode.MANUAL);
		for (int i = 0; i < 10000; i++) {
			TestBean o =new TestBean();
			o.setName("name"+i);
			o.setAge(12);
	    	session.save(o);
	    	
		}
	}
	
	
	/**
	 * 批量插入1万条，8秒钟
	 */
	public void batchInsertUseJdbc() throws Exception{
		
		String sql = "insert into OrderInfo ( ctime, etime, isdelte, orderName, "
											+ "	remark, status, stime, id)"
						+ " values (?, ?, ?, ?, ?, ?, ?, ?) ";
		Connection conn = SessionFactoryUtils.getDataSource(sessionFactory).getConnection();
		conn.setAutoCommit(false);
		
		PreparedStatement ps=conn.prepareStatement(sql); 

		for (int i = 0; i < 10000; i++) {
			ps.setTimestamp(1,  new Timestamp(System.currentTimeMillis()));
			ps.setTimestamp(2,  new Timestamp(System.currentTimeMillis()));
			ps.setInt(3, 0);
			ps.setString(4, "订单名称%010d");
			
			ps.setString(5, "备注"+i);
			ps.setInt(6, 1);
			ps.setTimestamp(7,  new Timestamp(System.currentTimeMillis()));
			ps.setInt(8, i+8);
			ps.addBatch();
	    	if(i%100==0){
	    		ps.executeBatch();
	    	
	    	}
		}
		ps.executeBatch();
		conn.commit();
	    
	}

	
}
