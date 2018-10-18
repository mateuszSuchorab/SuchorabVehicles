package com.suchorab.controller;


import com.suchorab.service.AppUserService;
import com.suchorab.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



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

}