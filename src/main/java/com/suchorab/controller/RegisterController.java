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

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
@Controller
public class RegisterController {

    @Autowired
    private AppUserService appUserService;

    @Autowired
    UserRoleService userRoleService;


    @RequestMapping(value = "/register")
    public ModelAndView showRegister() {
        ModelAndView view = new ModelAndView();
        view.setViewName("register");
        return view;
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView registerUser(@RequestParam("register_email") String email,
                                     @RequestParam("register_password") String password,
                                     @RequestParam("register_firstName") String firstName,
                                     @RequestParam("register_lastName") String lastName,
                                     @RequestParam("register_radio") String gender,
                                     @RequestParam("register_telephone") String telephone) {
        ModelAndView view = new ModelAndView();
        AppUser user = appUserService.getUserByUserEmail(email);
        if (user == null) {
            UserRole role = userRoleService.getRoleUser();
            List<UserRole> roles = new ArrayList<>();
            roles.add(role);
            user = new AppUser();
            user.setEmail(email);
            user.setPassword(Util.encodePassword(password));
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setGender(gender);
            user.setTelephone(telephone);
            user.setRoles(roles);
            appUserService.insertAppUser(user);
            return new ModelAndView("redirect:/successRegister");
        } else {
            view.setViewName("register");
            view.addObject("ErrorRegister", "This mail is already used, please use different mail");
            return view;
        }


    }

    @RequestMapping(value = "/successRegister")
    public ModelAndView showSuccessRegister() {
        ModelAndView view = new ModelAndView();
        view.setViewName("successRegister");
        return view;
    }



}
