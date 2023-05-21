package com.xyz.bd.webmaster.Controller.UserManagement;

import com.xyz.bd.webmaster.Config.session.SessionConstants;
import com.xyz.bd.webmaster.Config.session.SessionManager;
import com.xyz.bd.webmaster.Models.UserManagement.DTOs.DTOUser;
import com.xyz.bd.webmaster.Models.UserManagement.Entities.AppUser;
import com.xyz.bd.webmaster.Repositories.UserManagement.AppUserRepository;
import com.xyz.bd.webmaster.Services.UserManagement.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.datatables.mapping.DataTablesInput;
import org.springframework.data.jpa.datatables.mapping.DataTablesOutput;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@RestController
public class UserController {

    @Autowired
    private AppUserService appUserService;

    @Autowired
    private AppUserRepository appUserRepository;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView showUserPage(ModelMap model, HttpServletRequest request) {
        //new MenuViewer().setupSideMenu(model, request);
        model.addAttribute("title", "Dashboard");
        model.addAttribute("success", "hello hi.......");

        //SessionManager.getAttribute(SessionConstants.USER_DETAILS_XYZ.name(), request);
        return new ModelAndView("user/index");
        //return appUserRepository.findAll(new CustomSpecifier<AppUser>().textInAllColumns("xyz.com"));
    }


    @PostMapping(value = "/saveUser")
    public ModelAndView saveUser(DTOUser dtoUser, ModelMap model, RedirectAttributes attributes, HttpServletRequest request) {
        ///TODO: Add User

        return new ModelAndView("redirect:" + "user");
    }

    @PostMapping(value = "/updateUser")
    public ModelAndView updateUser(DTOUser dtoUser, ModelMap model, RedirectAttributes attributes, HttpServletRequest request) {
        ///TODO: Add User

        return new ModelAndView("redirect:" + "user");
    }

    @RequestMapping(value = "/user/update/{id}", method = RequestMethod.GET)
    public ModelAndView updateUserLoad(@PathVariable Long id, ModelMap model, HttpServletRequest request) {
        ///TODO: Add User
        model.addAttribute("info", appUserRepository.findFirstById(id));
        ModelAndView modelAndView = new ModelAndView("user/update");
        return modelAndView;
    }


    @RequestMapping(value = "/user/DtData", method = RequestMethod.GET)
    public DataTablesOutput<AppUser> DTMenu(@Valid DataTablesInput input, HttpServletRequest request) {
        return appUserService.DTData(input, request);
    }

    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    public AppUser get(@PathVariable Long id, HttpServletRequest request) {
        return appUserRepository.findFirstById(id);
    }


}
