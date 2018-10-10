package com.suchorab.controller;

import com.suchorab.model.AppUser;
import com.suchorab.service.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

    @Autowired
    AppUserService appUserService;


    @RequestMapping(value = "/")
    public ModelAndView showIndex() {
        ModelAndView view = new ModelAndView();
        view.setViewName("index");
        return view;
    }

    @RequestMapping(value = "/addAppUser{userId}")
    public String addAppUser(@PathVariable("userId") String userId){
        appUserService.insertAppUser(new AppUser( "user"+userId, "pass"));
        return "temp";
    }
}