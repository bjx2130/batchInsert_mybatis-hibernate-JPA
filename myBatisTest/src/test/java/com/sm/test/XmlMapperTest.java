package com.sm.test;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sm.bean.ClassInfo;
import com.sm.bean.School;
import com.sm.dao.ClassInfoDao;
import com.sm.dao.SchoolDao;
import com.sm.service.BatchDao;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:config/application-*.xml"})
@ActiveProfiles("Hibernate-MODEL")//用于指定环境
public class XmlMapperTest
{
	
	private static final Logger log = LogManager.getLogger();
	@Autowired
	private SchoolDao schoolDao;
	
	@Autowired
	private ClassInfoDao classInfoDao;
	
	@Autowired
	private BatchDao batchDao;
	
	@Test
	public void query(){
		List<ClassInfo> list = this.classInfoDao.queryAll();
		list.stream().forEach(o->{
			log.info("---->"+ReflectionToStringBuilder.toString(o)+"---"+ReflectionToStringBuilder.toString(o.getSchool()));
		});
		
	}
	
	
	@Test
	public void initTestDate(){
		//1.初始化学校数据
		School sc =new School();
		sc.setSchoolName("西京公司");
		sc.setCreatDateTime(new Date());
		sc.setRemark("也就是普通学校！！！");
		schoolDao.saveAndGeneratedKey(sc);		
		
		//2.初始化班级信息
		Random rd = new Random();
		for (int i = 0; i < 3; i++) {
			ClassInfo ci = new ClassInfo();
			ci.setClassName(i+"年极");
			ci.setTotalPerson(rd.nextInt(20));
			ci.setSchool(sc);
			classInfoDao.save(ci);
		}
	} 
	
	
	@Test
	public void batchInsert() throws Exception{
		batchDao.insert();
	}	
	
	
	
	
//	SqlSession session;	
//	
//	@Before
//	public void init(){
//		String resource = "config/mybatis-config.xml";
//		InputStream inputStream;
//		try {
//			inputStream = Resources.getResourceAsStream(resource);
//			SqlSessionFactory  sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//			session = sqlSessionFactory.openSession();
//			
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
//	
//	@After
//	public void destroy(){
//		//提交事务
//		session.commit();
//		session.close();
//	}
//	
//	
//	/**
//	 * 初始化测试数据
//	 */
//	@Test
//	public void initTestDate(){
//		SchoolDao schoolDao = session.getMapper(SchoolDao.class);
//		//1.初始化学校数据
//		School sc =new School();
//		sc.setSchoolName("西京公司");
//		sc.setCreatDateTime(new Date());
//		sc.setRemark("也就是普通学校！！！");
//		schoolDao.saveAndGeneratedKey(sc);		
//		
//		//2.初始化班级信息
//		ClassInfoDao dao = session.getMapper(ClassInfoDao.class);
//		Random rd = new Random();
//		List<ClassInfo> classList = new ArrayList<>(10);
//		for (int i = 0; i < classList.size(); i++) {
//			ClassInfo ci = new ClassInfo();
//			ci.setClassName(i+"年极");
//			ci.setTotalPerson(rd.nextInt(20));
//			ci.setSchool(sc);
//			dao.save(ci);
//		}
//	} 
//	
//	
//	
//	/**
//	 * 查询总的函数
//	 * @throws IOException
//	 */
//	@Test
//	public void getCount() throws IOException{
//		ClassInfoDao dao = session.getMapper(ClassInfoDao.class);
//		List<ClassInfo> list = dao.queryAll();
//		list.stream().forEach(i->{
//			System.out.println(i);
//		});;
//	}
//	
//	@Test
//	public void saveClassInfo(){
//		ClassInfoDao dao = session.getMapper(ClassInfoDao.class);
//		ClassInfo ci = new ClassInfo();
//		ci.setClassName("一年极");
//		ci.setTotalPerson(30);
//		dao.save(ci);
//	}
	
}
