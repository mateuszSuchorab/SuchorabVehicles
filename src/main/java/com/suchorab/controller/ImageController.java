package com.suchorab.controller;

import com.suchorab.model.Vehicle;
import com.suchorab.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/vehicleImage")
public class ImageController {


    @Autowired
    private VehicleService vehicleService;

    @RequestMapping(value = "/imageDisplay", method = RequestMethod.GET)
    public void showImage(@RequestParam("vehicleId") Long vehicleId, @RequestParam("image") int imageNumber, HttpServletResponse response, HttpServletRequest request)
            throws IOException {
        Vehicle vehicle = vehicleService.findVehicle(vehicleId);
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");

        switch (imageNumber) {
            case 1:
                response.getOutputStream().write(vehicle.getImage1());
                break;

            case 2:
                response.getOutputStream().write(vehicle.getImage2());
                break;

            case 3:
                response.getOutputStream().write(vehicle.getImage3());
                break;

            case 4:
                response.getOutputStream().write(vehicle.getImage4());
                break;

            default:
                response.getOutputStream().write(vehicle.getImage1());
        }
        response.getOutputStream().close();


    }
}