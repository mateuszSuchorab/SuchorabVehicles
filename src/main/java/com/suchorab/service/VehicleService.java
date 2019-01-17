package com.suchorab.service;

import com.suchorab.model.Vehicle;

import java.util.List;

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
public interface VehicleService {
    public void createVehicle(Vehicle vehicle);

    public void updateVehicle(Vehicle vehicle);


    public Vehicle findVehicle(int vehicleId);

    public List<Vehicle> getAllVehicles();

    public List<Vehicle> getAdminVehicles();

    public List<Vehicle> getAllVehiclesType(String type);

    public List<Vehicle> getNewArrivals();

    public List<Vehicle> getAllVehiclesMake(String type, String make);

    public List<Vehicle> getAllVehiclesModel(String type, String make, String model);

    public int countAllVehicles();


}