package com.suchorab.service;

import com.suchorab.model.AppUser;


public interface AppUserService {

    void insertAppUser(AppUser appUser);

    AppUser getUserByUserEmail(String email);
}