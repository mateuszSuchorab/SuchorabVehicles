package com.suchorab.service.impl;

import com.suchorab.DAO.UserRoleDAO;
import com.suchorab.model.UserRole;
import com.suchorab.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserRoleServiceImpl implements UserRoleService {

    @Autowired
    private UserRoleDAO userRoleDAO;

    @Override
    public UserRole getRoleUser() {
        return userRoleDAO.getRoleUser();
    }
}
