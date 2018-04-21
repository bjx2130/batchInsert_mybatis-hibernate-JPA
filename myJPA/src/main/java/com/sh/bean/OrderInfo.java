package com.sh.bean;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by ocean on 2016-09-26.
 *  *
 * 用于ORM框架使用的类
 */
@Entity
public class OrderInfo {
    private int id;
    private String orderName;
    private Date stime;
    private Date etime;
    private int status;
    private UserInfo student;
    private UserInfo coach;
    private String remark;
    private Date ctime;
    private int isdelte;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getStime() {
        return stime;
    }

    public void setStime(Date stime) {
        this.stime = stime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getEtime() {
        return etime;
    }

    public void setEtime(Date etime) {
        this.etime = etime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public int getIsdelte() {
        return isdelte;
    }

    public void setIsdelte(int isdelte) {
        this.isdelte = isdelte;
    }

    @OneToOne(fetch = FetchType.EAGER,cascade = CascadeType.DETACH)
    @JoinColumn(name="sutdenId")
    public UserInfo getStudent() {
        return student;
    }

    public void setStudent(UserInfo student) {
        this.student = student;
    }

    @OneToOne(fetch = FetchType.EAGER,cascade = CascadeType.DETACH)
    @JoinColumn(name="coachId")
    public UserInfo getCoach() {
        return coach;
    }

    public void setCoach(UserInfo coach) {
        this.coach = coach;
    }
}
