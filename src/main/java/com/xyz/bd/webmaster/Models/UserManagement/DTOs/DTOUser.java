package com.xyz.bd.webmaster.Models.UserManagement.DTOs;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
public class DTOUser {

    @JsonProperty("Id")
    private Long id;

    @JsonProperty("Name")
    private String name;

    @JsonProperty("LoginName")
    private String loginName;

    @JsonProperty("Email")
    private String email;

    @JsonProperty("Password")
    private String password;

    @JsonProperty("UserGroupId")
    private String userGroupId;

    @JsonProperty("UserGroupName")
    private String userGroupName;

    @JsonProperty("Active")
    private boolean active;

    @JsonProperty("IsLock")
    private boolean isLock;

    @JsonProperty("EapprovalId")
    private String eapprovalId;

    @JsonProperty("CanLogin")
    private boolean canLogin;

    @JsonProperty("IsNew")
    private boolean isNew;

    @JsonProperty("LastPassCngTime")
    private Date lastPassCngTime;

    @JsonProperty("SessionId")
    private String sessionId;

    @JsonProperty("DesignationId")
    private Integer designationId;

    @JsonProperty("DepartmentId")
    private Integer departmentId;

    @JsonProperty("RegionId")
    private Integer regionId;

    @JsonProperty("AreaId")
    private Integer areaId;

    @JsonProperty("ExpiredDt")
    private Date expiredDt;
}
