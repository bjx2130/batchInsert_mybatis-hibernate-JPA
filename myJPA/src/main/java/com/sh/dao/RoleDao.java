package com.sh.dao;



import java.util.List;

import com.sh.bean.Role;
import com.sh.bean.UserInfo;

/**
 * Created by ocean on 2016-09-26.
 */
public interface RoleDao {

    public void save(Role role);

    public List<Role> queryList(String phone);


    public UserInfo findUser(String phone);

}
