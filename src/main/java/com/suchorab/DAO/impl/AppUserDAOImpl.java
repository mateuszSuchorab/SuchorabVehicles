package com.suchorab.DAO.impl;

import com.suchorab.DAO.AppUserDAO;
import com.suchorab.model.AppUser;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.resource.transaction.spi.TransactionStatus;
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
        Transaction transaction = currentSession().beginTransaction();
        currentSession().save(appUser);
            transaction.commit();
    }

    @Override
    public AppUser getUserByUserEmail(String email) {
        Transaction transaction = currentSession().beginTransaction();
        AppUser appUser = (AppUser) currentSession().createCriteria(AppUser.class).add(Restrictions.eq("email", email)).uniqueResult();
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return appUser;
    }
}
