package com.sh.dao;


import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.sh.bean.UserInfo;

/**
 * Created by ocean on 2016-09-26.
 */
@Repository
public class UserInfoDaoImpl implements UserInfoDao {
    private static final Logger log = LogManager.getLogger();
    @PersistenceContext
    private EntityManager emf;

    @Override
    public void save(UserInfo userInfo) {
         this.emf.persist(userInfo);
    }

    @Override
    public UserInfo findUser(String phone) {
        TypedQuery<UserInfo> objQuery =  this.emf.createQuery("select u from UserInfo u where u.phone=?1",UserInfo.class);
        objQuery.setParameter(1,phone);
        try{
            return objQuery.getSingleResult();
        }catch (NoResultException e){
            return null;
        }
    }






}
