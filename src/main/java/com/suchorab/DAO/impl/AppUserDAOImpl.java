package com.suchorab.DAO.impl;

import com.suchorab.DAO.AppUserDAO;
import com.suchorab.model.AppUser;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public class AppUserDAOImpl implements AppUserDAO {

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    protected Session currentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void insertAppUser(AppUser appUser) {
        Transaction transaction=currentSession().beginTransaction();
        currentSession().save(appUser);
        transaction.commit();
    }
}
