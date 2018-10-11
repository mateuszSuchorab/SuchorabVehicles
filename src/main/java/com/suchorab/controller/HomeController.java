package com.suchorab.controller;

import com.suchorab.model.AppUser;
import com.suchorab.model.UserRole;
import com.suchorab.service.AppUserService;
import com.suchorab.service.UserRoleService;
import com.suchorab.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Controller
public class HomeController {

    @Autowired
    AppUserService appUserService;

    @Autowired
    UserRoleService userRoleService;


    @RequestMapping(value = "/")
    public ModelAndView showIndex() {
        ModelAndView view = new ModelAndView();
        view.setViewName("index");
        return view;
    }

    @RequestMapping(value = "/register")
    public String login(){
        return "register";
    }


    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String singupForm(@RequestParam String userName, @RequestParam String password){
        UserRole role = userRoleService.getRoleUser();
        List<UserRole> roles = new ArrayList<>();
        appUserService.insertAppUser(new AppUser(userName, Util.encodePassword(password),roles));
        return "redirect:/login";
    }
}