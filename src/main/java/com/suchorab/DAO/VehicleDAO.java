package com.suchorab.DAO;

import com.suchorab.model.Vehicle;

import java.util.List;

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
public interface VehicleDAO {
    public void createVehicle(Vehicle vehicle);

    public void updateVehicle(Vehicle vehicle);

    public Vehicle editVehicle(Long vehicleId);

    public void deleteVehicle(Long vehicleId);

    public Vehicle findVehicle(Long vehicleId);

    public List<Vehicle> getAllVehicles();

    public List<Vehicle> getAllVehiclesType(String type);

    public List<Vehicle> getNewArrivals();

    public List<Vehicle> getAllVehiclesMake(String type, String make);

    public List<Vehicle> getAllVehiclesModel(String type, String make, String model);

    public int countAllVehicles();

}

