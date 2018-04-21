package com.sh.dao;


import com.sh.bean.UserInfo;

/**
 * Created by ocean on 2016-09-26.
 */
public interface UserInfoDao {

    public UserInfo findUser(String phone);

    public void save(UserInfo userInfo);


}
