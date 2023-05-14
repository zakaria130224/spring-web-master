package com.xyz.bd.webmaster.Controller.UserManagement;

import com.xyz.bd.webmaster.models.user.Entities.AppUser;
import com.xyz.bd.webmaster.repositories.user.AppUserRepository;
import com.xyz.bd.webmaster.user.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.datatables.mapping.DataTablesInput;
import org.springframework.data.jpa.datatables.mapping.DataTablesOutput;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@RestController
public class UserRestController {

    @Autowired
    private AppUserService appUserService;

    @Autowired
    private AppUserRepository appUserRepository;

    @RequestMapping(value = "/user/DtData", method = RequestMethod.GET)
    public DataTablesOutput<AppUser> DTMenu(@Valid DataTablesInput input, HttpServletRequest request){
        return appUserService.DTData(input, request);
    }
}
