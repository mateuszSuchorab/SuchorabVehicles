package com.suchorab.controller;

import com.suchorab.model.Vehicle;
import com.suchorab.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Random;

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
@Controller
public class VehicleController {


    @Autowired
    private VehicleService vehicleService;

    @RequestMapping(value = "/vehicle{vehicleId}")
    public ModelAndView showVehicle(@PathVariable("vehicleId") String vehicleId) {
        ModelAndView view = new ModelAndView();
        Vehicle vehicle = vehicleService.findVehicle(Long.parseLong(vehicleId));

        if (vehicle != null) {
            view.setViewName("vehicle");

            int numberOfCars = vehicleService.countAllVehicles();
            Random random = new Random();
            int firstAdditionalVehicle = random.nextInt(numberOfCars) + 1;
            while (firstAdditionalVehicle == vehicle.getVehicleId()) {
                firstAdditionalVehicle = random.nextInt(numberOfCars) + 1;
            }
            int secondAdditionalVehicle = random.nextInt(numberOfCars) + 1;
            while (secondAdditionalVehicle == vehicle.getVehicleId() || secondAdditionalVehicle == firstAdditionalVehicle) {
                secondAdditionalVehicle = random.nextInt(numberOfCars) + 1;
            }

            view.addObject("vehicle", vehicle);
            view.addObject("firstAdditionalVehicle", vehicleService.findVehicle(Long.valueOf(firstAdditionalVehicle)));
            view.addObject("secondAdditionalVehicle", vehicleService.findVehicle(Long.valueOf(secondAdditionalVehicle)));
        } else {
            view.setViewName("pageNotFound");
        }
        return view;
    }




}
