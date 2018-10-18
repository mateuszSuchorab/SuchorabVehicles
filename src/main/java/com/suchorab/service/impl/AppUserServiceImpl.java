package com.suchorab.service.impl;

import com.suchorab.DAO.AppUserDAO;
import com.suchorab.model.AppUser;
import com.suchorab.service.AppUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class AppUserServiceImpl implements AppUserService {

    @Autowired
    private AppUserDAO appUserDAO;

    @Override
    public void insertAppUser(AppUser appUser) {
        appUserDAO.insertAppUser(appUser);
    }

    @Override
    public AppUser getUserByUserEmail(String email) {
        return appUserDAO.getUserByUserEmail(email);
    }
}