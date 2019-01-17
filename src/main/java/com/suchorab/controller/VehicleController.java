package com.suchorab.controller;

import com.suchorab.model.AppUser;
import com.suchorab.model.Vehicle;
import com.suchorab.service.AppUserService;
import com.suchorab.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
@Controller
public class VehicleController {


    @Autowired
    private VehicleService vehicleService;

    @Autowired
    private AppUserService appUserService;

    @RequestMapping(value = "/vehicle{vehicleId}")
    public ModelAndView showVehicle(@PathVariable("vehicleId") String vehicleId) {
        ModelAndView view = new ModelAndView();
        Vehicle vehicle = vehicleService.findVehicle(Integer.valueOf(vehicleId));

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
            view.addObject("firstAdditionalVehicle", vehicleService.findVehicle(Integer.valueOf(firstAdditionalVehicle)));
            view.addObject("secondAdditionalVehicle", vehicleService.findVehicle(Integer.valueOf(secondAdditionalVehicle)));
        } else {
            view.setViewName("pageNotFound");
        }
        return view;
    }


    @RequestMapping(value = "/admin/vehicle{vehicleId}")
    public ModelAndView showAdminVehicle(@PathVariable("vehicleId") String vehicleId) {
        ModelAndView view = new ModelAndView();
        Vehicle vehicle = vehicleService.findVehicle(Integer.valueOf(vehicleId));

        if (vehicle != null) {
            ArrayList<String> vehicleTypeList = new ArrayList<String>(
                    Arrays.asList("Cars", "Motorbikes", "Trucks", "Vans", "Buses"));
            vehicleTypeList.remove(vehicle.getVehicleType());
            ArrayList<String> vehicleFuelList = new ArrayList<String>(
                    Arrays.asList("Petrol", "Diesel", "Hybryd", "LPG"));
            vehicleFuelList.remove(vehicle.getFuelType());
            view.setViewName("adminVehicle");
            view.addObject("user", vehicle.getUser().iterator().next());
            view.addObject("vehicle", vehicle);
            view.addObject("vehicleTypeList", vehicleTypeList);
            view.addObject("vehicleFuelList", vehicleFuelList);
        } else {
            view.setViewName("pageNotFound");
        }
        return view;
    }

    @RequestMapping(value = "/admin/vehicle{vehicleId}", method = RequestMethod.POST)
    public String registerUser(@PathVariable("vehicleId") String vehicleId,
                                     @RequestParam("vehicle_make") String make,
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
                                     @RequestParam("vehicle_details") String details) {

        Vehicle vehicle = vehicleService.findVehicle(Integer.valueOf( vehicleId));
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
        Set<AppUser> appUserList = new HashSet<AppUser>();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String logedUserEmail = auth.getName();
        if (!logedUserEmail.equals("anonymousUser") ){
            AppUser user = appUserService.getUserByUserEmail(logedUserEmail);
            appUserList.add(user);
        }
        vehicle.setUser(appUserList);

        for (CommonsMultipartFile aFile : vehiclePicture1) {

            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage1(aFile.getBytes());
            }
        }

        for (CommonsMultipartFile aFile : vehiclePicture2) {
            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage2(aFile.getBytes());
            }
        }

        for (CommonsMultipartFile aFile : vehiclePicture3) {
            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage3(aFile.getBytes());
            }
        }
        for (CommonsMultipartFile aFile : vehiclePicture4) {
            if (aFile.getOriginalFilename() != null && aFile.getOriginalFilename().length() > 0) {
                vehicle.setImage4(aFile.getBytes());
            }
        }
        vehicle.setDetails(details);
        vehicleService.updateVehicle(vehicle);
        return "redirect:/vehicle" +vehicleId ;


    }

}
