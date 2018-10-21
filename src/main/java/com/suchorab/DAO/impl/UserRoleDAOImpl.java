package com.suchorab.DAO.impl;

import com.suchorab.DAO.UserRoleDAO;
import com.suchorab.model.UserRole;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;


@Repository
@Transactional
public class UserRoleDAOImpl implements UserRoleDAO {

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    protected Session currentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public UserRole getRoleUser() {
        Transaction transaction=currentSession().beginTransaction();
        UserRole userRole = (UserRole) currentSession()
                .createCriteria(UserRole.class)
                .add(Restrictions.eq("roleName", "ROLE_USER"))
                .uniqueResult();
        transaction.commit();
        return userRole;
    }
}
