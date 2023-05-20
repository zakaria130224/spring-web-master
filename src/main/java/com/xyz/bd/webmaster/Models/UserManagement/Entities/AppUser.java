package com.xyz.bd.webmaster.Models.UserManagement.Entities;

import com.xyz.bd.webmaster.Models.common.Entities.BaseEntity;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "MD_USER")
public class AppUser extends BaseEntity {

    @Column(name = "NAME")
    private String name;

    @Column(name = "LOGIN_NAME")
    private String loginName;

    @Column(name = "EMAIL")
    private String email;

    @Column(name = "PASSWORD")
    private String password;

    @Column(name = "USER_GROUP_ID")
    private long userGroupId;

    @Column(name = "USER_GROUP_NAME")
    private String userGroupName;

    @Column(name = "ACTIVE")
    private boolean active;

    @Column(name = "IS_LOCK")
    private boolean isLock;

    @Column(name = "EAPPROVAL_ID")
    private String eapprovalId;

    @Column(name = "CAN_LOGIN")
    private boolean canLogin;

    @Column(name = "IS_NEW")
    private boolean isNew;

    @Column(name = "LAST_PASS_CNG_TIME")
    private Date lastPassCngTime;

    @Column(name = "SESSION_ID")
    private String sessionId;

    @Column(name = "DESIGNATION_ID")
    private Integer designationId;

    @Column(name = "DEPARTMENT_ID")
    private Integer departmentId;

    @Column(name = "REGION_ID")
    private Integer regionId;

    @Column(name = "AREA_ID")
    private Integer areaId;

    @Column(name = "EXPIRED_DT")
    private Date expiredDt;

    @Column(name = "LOCKED_DT")
    private Date lockedDt;


}