package com.xyz.bd.webmaster.models.user.Entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.xyz.bd.webmaster.models.common.Entities.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

@Data
@Entity
@Table(name = "MD_USER")
public class AppUser extends BaseEntity {


    @Column(name = "NAME")
    @JsonProperty("Name")
    private String name;

    @Column(name = "LOGIN_NAME")
    @JsonProperty("LoginName")
    private String loginName;

    @Column(name = "EMAIL")
    @JsonProperty("Email")
    private String email;

    @Column(name = "PASSWORD")
    @JsonProperty("Password")
    private String password;

    @Column(name = "USER_GROUP_ID")
    @JsonProperty("UserGroupId")
    private long userGroupId;

    @Column(name = "USER_GROUP_NAME")
    @JsonProperty("UserGroupName")
    private String userGroupName;

    @Column(name = "ACTIVE")
    @JsonProperty("Active")
    private boolean active;

    @Column(name = "IS_LOCK")
    @JsonProperty("IsLock")
    private boolean isLock;

    @Column(name = "EAPPROVAL_ID")
    @JsonProperty("EapprovalId")
    private String eapprovalId;

    @Column(name = "CAN_LOGIN")
    @JsonProperty("CanLogin")
    private boolean canLogin;

    @Column(name = "IS_NEW")
    @JsonProperty("IsNew")
    private boolean isNew;

    @Column(name = "LAST_PASS_CNG_TIME")
    @JsonProperty("LastPassCngTime")
    private Date lastPassCngTime;

    @Column(name = "SESSION_ID")
    @JsonProperty("SessionId")
    private String sessionId;

    @Column(name = "DESIGNATION_ID")
    @JsonProperty("DesignationId")
    private Integer designationId;

    @Column(name = "DEPARTMENT_ID")
    @JsonProperty("DepartmentId")
    private Integer departmentId;

    @Column(name = "REGION_ID")
    @JsonProperty("RegionId")
    private Integer regionId;

    @Column(name = "AREA_ID")
    @JsonProperty("AreaId")
    private Integer areaId;

    @Column(name = "EXPIRED_DT")
    @JsonProperty("ExpiredDt")
    private Date expiredDt;

    @Column(name = "LOCKED_DT")
    @JsonProperty("LockedDt")
    private Date lockedDt;


}
