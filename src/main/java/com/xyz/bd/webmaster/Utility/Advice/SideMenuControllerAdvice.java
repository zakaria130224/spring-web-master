package com.xyz.bd.webmaster.Utility.Advice;

import com.xyz.bd.webmaster.Config.session.SessionManager;
import com.xyz.bd.webmaster.Models.UserManagement.DTOs.MenuTree;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@ControllerAdvice
public class SideMenuControllerAdvice {

    @ModelAttribute
    public void sideMenuAdd(HttpServletRequest request, ModelMap model) {
        List<MenuTree> menus = SessionManager.getPermittedSideMenuList(request);
        //Side menu

        model.addAttribute("sideMenu", menus);
        //populating request URI in the model
        //model.addAttribute("success", menus.size());
    }
}
