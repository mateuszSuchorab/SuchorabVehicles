package com.suchorab.service.impl;

import com.suchorab.DAO.VehicleDAO;
import com.suchorab.model.Vehicle;
import com.suchorab.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
@Service
@Transactional
public class VehicleServiceImpl implements VehicleService {

    @Autowired
    private VehicleDAO vehicleDAO;

    @Override
    public void createVehicle(Vehicle vehicle) {
        vehicleDAO.createVehicle(vehicle);
    }

    @Override
    public void updateVehicle(Vehicle vehicle) {
        vehicleDAO.updateVehicle(vehicle);
    }


    @Override
    public Vehicle findVehicle(int vehicleId) {
        return vehicleDAO.findVehicle(vehicleId);
    }

    @Override
    public List<Vehicle> getAllVehicles() {
        return vehicleDAO.getAllVehicles();
    }

    @Override
    public List<Vehicle> getAdminVehicles() {
        return vehicleDAO.getAdminVehicles();
    }

    @Override
    public List<Vehicle> getAllVehiclesType(String type) {
        return vehicleDAO.getAllVehiclesType(type);
    }

    @Override
    public List<Vehicle> getNewArrivals() {
        return vehicleDAO.getNewArrivals();
    }

    @Override
    public List<Vehicle> getAllVehiclesMake(String type, String make) {
        return vehicleDAO.getAllVehiclesMake(type, make);
    }

    @Override
    public List<Vehicle> getAllVehiclesModel(String type, String make, String model) {
        return vehicleDAO.getAllVehiclesModel(type, make, model);
    }

    @Override
    public int countAllVehicles() {
        return vehicleDAO.countAllVehicles();
    }
}
