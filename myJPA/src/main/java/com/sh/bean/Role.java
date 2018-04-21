package com.sh.bean;

import javax.persistence.*;
import java.util.*;

/**
 * Created by ocean on 2016-09-26.
 *  *
 * 用于ORM框架使用的类
 */
@Entity
public class Role {

    private int id;
    private String rolename;
    private String describes;
    private String remark;
    private Date createDate;
    private int isdelte;

    public List<UserInfo> userInfos = new ArrayList<>();
    private List<Module> modules = new ArrayList<>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getIsdelte() {
        return isdelte;
    }

    public void setIsdelte(int isdelte) {
        this.isdelte = isdelte;
    }


    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.DETACH,mappedBy = "role")
    public List<UserInfo> getUserInfos() {
        return userInfos;
    }

    public void setUserInfos(List<UserInfo> userInfos) {
        this.userInfos = userInfos;
    }

    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    @JoinTable(name = "Role_Module",
            joinColumns = {@JoinColumn(name = "role_id", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "module_id", referencedColumnName ="id")})
    public List<Module> getModules() {
        return modules;
    }

    public void setModules(List<Module> modules) {
        this.modules = modules;
    }
}
