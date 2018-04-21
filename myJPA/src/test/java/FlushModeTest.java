import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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

import com.sh.dao.FlushModeDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/application-*.xml"})
@ActiveProfiles("JPA-MODEL")//用于指定环境
public class FlushModeTest {
private static final Logger log = LogManager.getLogger();
	@Autowired
	private FlushModeDao dao;
	
	@PersistenceContext
    private EntityManager emf;
	

	
	@Test
	public void autoMode() {
		dao.auto();
	}
	
	
	@Test
	public void commitMode() {
		dao.commit();
	}
	
}
