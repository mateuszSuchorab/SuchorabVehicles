package com.suchorab.DAO.impl;

import com.suchorab.DAO.VehicleDAO;
import com.suchorab.model.Vehicle;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.resource.transaction.spi.TransactionStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
@Repository
@Transactional
public class VehicleDAOImpl implements VehicleDAO {

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    protected Session currentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void createVehicle(Vehicle vehicle) {
        Transaction transaction = currentSession().beginTransaction();
        currentSession().save(vehicle);
            transaction.commit();
    }

    @Override
    public void updateVehicle(Vehicle vehicle) {
        Transaction transaction = currentSession().beginTransaction();
        currentSession().update(vehicle);
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
    }

    @Override
    public Vehicle editVehicle(int vehicleId) {
        Transaction transaction = currentSession().beginTransaction();
        Vehicle result =  findVehicle(vehicleId);
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }

    @Override
    public void deleteVehicle(int vehicleId) {
        Transaction transaction = currentSession().beginTransaction();
        currentSession().delete(vehicleId);
        transaction.commit();
    }

    @Override
    public Vehicle findVehicle(int vehicleId) {
        Transaction transaction = currentSession().beginTransaction();
        Vehicle result = (Vehicle) currentSession().get(Vehicle.class, vehicleId);
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }

    @Override
    public List<Vehicle> getAllVehicles() {
        Transaction transaction = currentSession().beginTransaction();
        List<Vehicle> result =  currentSession().createCriteria(Vehicle.class).list();
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }

    @Override
    public List<Vehicle> getAllVehiclesType(String type) {
        Transaction transaction = currentSession().beginTransaction();
        List<Vehicle> list = currentSession().createCriteria(Vehicle.class).list();
        List<Vehicle> result = new ArrayList<Vehicle>();
        for (Vehicle vehicle : list) {
            if (vehicle.getVehicleType().equals(type) && vehicle.getAccepted()==true) {
                result.add(vehicle);
            }
        }
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }

    @Override
    public List<Vehicle> getNewArrivals() {
        Transaction transaction = currentSession().beginTransaction();
        List<Vehicle> list = currentSession().createCriteria(Vehicle.class).list();
        List<Vehicle> result = new ArrayList<Vehicle>();
        Calendar c = Calendar.getInstance();
        c.setTime(new Date());
        c.add(Calendar.DATE, -30);
        Date monthAGo = c.getTime();
        for (Vehicle vehicle : list) {
            if (vehicle.getCreateDate().after(monthAGo) && vehicle.getAccepted()==true) {
                result.add(vehicle);
            }
        }
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }

    @Override
    public List<Vehicle> getAllVehiclesMake(String type,String make) {
        Transaction transaction = currentSession().beginTransaction();
        List<Vehicle> list = getAllVehiclesType(type);
        List<Vehicle> result = new ArrayList<Vehicle>();
        for (Vehicle vehicle : list) {
            if (vehicle.getMake().equals(make) && vehicle.getAccepted()==true) {
                result.add(vehicle);
            }
        }
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }

    @Override
    public List<Vehicle> getAllVehiclesModel(String type,String make,String model) {
        Transaction transaction = currentSession().beginTransaction();
        List<Vehicle> list = getAllVehiclesMake(type,make);
        List<Vehicle> result = new ArrayList<Vehicle>();
        for (Vehicle vehicle : list) {
            if (vehicle.getModel().equals(model) && vehicle.getAccepted()==true) {
                result.add(vehicle);
            }
        }
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }

    @Override
    public int countAllVehicles() {
        Transaction transaction = currentSession().beginTransaction();
        int result = currentSession().createCriteria(Vehicle.class).list().size();
        if (!transaction.getStatus().equals(TransactionStatus.ACTIVE))
            transaction.commit();
        return result;
    }
}
