package com.suchorab.DAO.impl;

import com.suchorab.DAO.AcceptableVehicleDAO;
import com.suchorab.model.AcceptableVehicle;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.resource.transaction.spi.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class AcceptableVehicleDAOImpl implements AcceptableVehicleDAO {

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    protected Session currentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<AcceptableVehicle> getAllAcceptableVehicle() {
        Transaction transaction = currentSession().beginTransaction();
        List<AcceptableVehicle> result = currentSession().createCriteria(AcceptableVehicle.class).list();
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }
}
