package com.xyz.bd.webmaster.Controller.UserManagement;

import com.xyz.bd.webmaster.models.user.Entities.AppUser;
import com.xyz.bd.webmaster.repositories.specifier.CustomSpecifier;
import com.xyz.bd.webmaster.repositories.user.AppUserRepository;
import com.xyz.bd.webmaster.user.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private AppUserService appUserService;

    @Autowired
    private AppUserRepository appUserRepository;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String showUserPage(ModelMap model, HttpServletRequest request) {
        //new MenuViewer().setupSideMenu(model, request);
        model.addAttribute("title", "Dashboard");
        return "user/index";
        //return appUserRepository.findAll(new CustomSpecifier<AppUser>().textInAllColumns("xyz.com"));
    }
}
