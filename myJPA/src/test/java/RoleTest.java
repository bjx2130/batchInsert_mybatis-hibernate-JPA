import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sh.bean.UserInfo;
import com.sh.dao.UserInfoDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/application-*.xml"})
@ActiveProfiles("JPA-MODEL")//用于指定环境
public class RoleTest {
	private static final Logger log = LogManager.getLogger();
    
	@Autowired
	private UserInfoDao uDao;
	
	
    @Test
    public void initDate(){
    	UserInfo u = new UserInfo();
    	u.setAge(22);
    	u.setIdCard("610113198901072130");
    	u.setPhone("13991104190");
    	u.setSex("男");
    	this.uDao.save(u);
    }
    
    
//    @Test
//    public void queryUserInfo(){
//    	UserInfo u = this.emf.getReference(UserInfo.class, 50);
//    	u.setRemark("能不能修改2异常回滚");
//    	//将session中得对象刷新到数据库中
//    	this.emf.flush();
//    	log.info(1/0);
//    }
//    
//    
//    
//	@Test
//	public void queryRole() {
//		TypedQuery<Role> pageQuery = this.emf.createQuery("SELECT o FROM UserInfo u JOIN u.role o WHERE u.phone=?1",Role.class);
//        pageQuery.setParameter(1,"13991104190");
//		List<Role> list = pageQuery.getResultList();
//		list.stream().forEach((r)->{
//			r.setRemark("将session中得对象刷新到缓存中");
//		});
//		
//		this.emf.flush();
//	}
//	
//	@Test
//	public void hibernateStreamQuery(){
//		
//		Session session = this.emf.unwrap( Session.class );
//		log.info("=================" + session);
//		session.createQuery("SELECT u FROM UserInfo u  WHERE u.phone=?1",UserInfo.class)
//			.setParameter(1,"13991104190")
//			.stream().forEach((o)->{
//				log.info("返回数据--------> {}",o.getRemark());
//			});
//	}
//	
//	
//	/**
//	 * 获取hibernateSession
//	 */
//	@Test
//	@Transactional
//	public void accessHibernateSession(){
//		Session session = this.emf.unwrap( Session.class );
//		UserInfo u = new UserInfo();
//    	u.setAge(22);
//    	u.setIdCard("610113198901072130");
//    	u.setPhone("13991104190");
//    	u.setSex("男");
//    	u.setRemark("5555测试678678");
//    	session.save(u);
//    	session.getTransaction().rollback();
//    	
//	}
	
	
}
