package com.suchorab.controller;

import com.suchorab.model.AppUser;
import com.suchorab.model.Vehicle;
import com.suchorab.service.AppUserService;
import com.suchorab.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * @author Mateusz Suchorab <suchorchorab.mateusz@gmail.com>
 */
@Controller
public class OfferController {

    @Autowired
    private VehicleService vehicleService;

    @Autowired
    private AppUserService appUserService;

    @RequestMapping(value = "/sellVehicle")
    public ModelAndView showSellVehicles(HttpSession session) {
        ModelAndView view = new ModelAndView();
        view.setViewName("sellVehicle");
        return view;
    }

    @RequestMapping(value = "/successOffer", method = RequestMethod.POST)
    public ModelAndView showSuccessOffer(@RequestParam("vehicle_make") String make,
                                         @RequestParam("vehicle_model") String model,
                                         @RequestParam("vehicle_power") int power,
                                         @RequestParam("vehicle_type") String type,
                                         @RequestParam("vehicle_firstRegistration") String firstRegistration,
                                         @RequestParam("vehicle_price") int price,
                                         @RequestParam("vehicle_fuelType") String fuelType,
                                         @RequestParam("vehicle_kilometer") int kilometer,
                                         @RequestParam("vehicle_picture1") CommonsMultipartFile[] vehiclePicture1,
                                         @RequestParam("vehicle_picture2") CommonsMultipartFile[] vehiclePicture2,
                                         @RequestParam("vehicle_picture3") CommonsMultipartFile[] vehiclePicture3,
                                         @RequestParam("vehicle_picture4") CommonsMultipartFile[] vehiclePicture4,
                                         @RequestParam("vehicle_details") String details,
                                         HttpSession session
    ) {
        ModelAndView view = new ModelAndView();
        Vehicle vehicle = new Vehicle();
        vehicle.setVehicleId(Long.valueOf("0"));
        DateFormat dateFormat = new SimpleDateFormat("MMMM yyyy", Locale.US);
        try {
            vehicle.setFirstRegistration(dateFormat.parse(firstRegistration));
        } catch (ParseException e) {
            vehicle.setFirstRegistration(new Date());
        }
        vehicle.setMake(make.substring(0, 1).toUpperCase() + make.substring(1));
        vehicle.setModel(model.substring(0, 1).toUpperCase() + model.substring(1));
        vehicle.setKilometer(kilometer);
        vehicle.setAccepted(true);
        vehicle.setPower(power);
        vehicle.setPrice(price);
        vehicle.setVehicleType(type);
        vehicle.setFuelType(fuelType);
        vehicle.setCreateDate(new Date());
       // vehicle.setUser((AppUser) session.getAttribute("loggedInUser"));
        AppUser user = appUserService.getUserByUserEmail("a@a.a");
        vehicle.setUser(user);

        for (CommonsMultipartFile aFile : vehiclePicture1) {
            //System.out.println("Saving file: " + aFile.getOriginalFilename());
            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage1(aFile.getBytes());
            } else {
                vehicle.setImage1(null);
            }
        }

        for (CommonsMultipartFile aFile : vehiclePicture2) {
            //System.out.println("Saving file: " + aFile.getOriginalFilename());
            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage2(aFile.getBytes());
            } else {
                vehicle.setImage2(null);
            }
        }

        for (CommonsMultipartFile aFile : vehiclePicture3) {
            //System.out.println("Saving file: " + aFile.getOriginalFilename());
            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage3(aFile.getBytes());
            } else {
                vehicle.setImage3(null);
            }
        }
        for (CommonsMultipartFile aFile : vehiclePicture4) {
            //System.out.println("Saving file: " + aFile.getOriginalFilename());
            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage4(aFile.getBytes());
            } else {
                vehicle.setImage4(null);
            }
        }
        vehicle.setDetails(details);
        vehicleService.createVehicle(vehicle);
        view.setViewName("successOffer");
        return view;

    }

}
