package com.suchorab.controller;

import com.suchorab.model.Vehicle;
import com.suchorab.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class DetailsController {

    @Autowired
    private VehicleService vehicleService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminVehicles(@RequestParam(value = "sort", required = false) String sort,
                                      @RequestParam(value = "makeList", required = false) List<String> uncheckedMakeList,
                                      @RequestParam(value = "modelList", required = false) List<String> uncheckedModelList,
                                      @RequestParam(value = "min_price", required = false) String minPrice,
                                      @RequestParam(value = "max_price", required = false) String maxPrice,
                                      @RequestParam(value = "min_power", required = false) String minPower,
                                      @RequestParam(value = "max_power", required = false) String maxPower,
                                      @RequestParam(value = "min_kilometerage", required = false) String minKilometerage,
                                      @RequestParam(value = "max_kilometerage", required = false) String maxKilometerage,
                                      @RequestParam(value = "fuel_type", required = false) List<String> fuelTypeList,
                                      @RequestParam(value = "min_registrationTime", required = false) String minRegistrationTime,
                                      @RequestParam(value = "max_registrationTime", required = false) String maxRegistrationTime) {

        ModelAndView view = new ModelAndView();

        ArrayList<String> vehicleMakeList = new ArrayList<String>();
        ArrayList<String> vehicleModelList = new ArrayList<String>();

        List<Vehicle> vehicleList = vehicleService.getAdminVehicles();

        view.setViewName("details");

        // This make values in vehicleMakeList unique and delete vehicle from vehicleList when Make is in url param
        uniqueAndDeleteMake(vehicleList, vehicleMakeList, uncheckedMakeList);

        // This make values in vehicleModelList unique and delete vehicle from vehickeList when Model is in url param
        uniqueAndDeleteModel(vehicleList, vehicleModelList, uncheckedModelList);

        //filter by
        filterVehicleList(vehicleList, minPrice, maxPrice, minPower, maxPower, minKilometerage, maxKilometerage, fuelTypeList, minRegistrationTime, maxRegistrationTime);
        //sorting
        if (sort != null) {
            sortVehicleList(vehicleList, sort);
        }
        //block of addObject to view
        view.addObject("vehicleList", vehicleList);
        view.addObject("vehicleMakeList", vehicleMakeList);
        view.addObject("vehicleModelList", vehicleModelList);
        view.addObject("vehicleType", "Admin");
        view.addObject("uncheckedMakeList", uncheckedMakeList);
        view.addObject("uncheckedModelList", uncheckedModelList);
        view.addObject("minPrice", minPrice);
        view.addObject("maxPrice", maxPrice);
        view.addObject("minPower", minPower);
        view.addObject("maxPower", maxPower);
        view.addObject("minKilometerage", minKilometerage);
        view.addObject("maxKilometerage", maxKilometerage);
        view.addObject("fuelTypeList", fuelTypeList);
        view.addObject("minRegistrationTime", minRegistrationTime);
        view.addObject("maxRegistrationTime", maxRegistrationTime);


        return view;
    }

    @RequestMapping(value = "/{vehicleType}", method = RequestMethod.GET)
    public ModelAndView showVehicles(@PathVariable("vehicleType") String vehicleType,
                                     @RequestParam(value = "sort", required = false) String sort,
                                     @RequestParam(value = "makeList", required = false) List<String> uncheckedMakeList,
                                     @RequestParam(value = "modelList", required = false) List<String> uncheckedModelList,
                                     @RequestParam(value = "min_price", required = false) String minPrice,
                                     @RequestParam(value = "max_price", required = false) String maxPrice,
                                     @RequestParam(value = "min_power", required = false) String minPower,
                                     @RequestParam(value = "max_power", required = false) String maxPower,
                                     @RequestParam(value = "min_kilometerage", required = false) String minKilometerage,
                                     @RequestParam(value = "max_kilometerage", required = false) String maxKilometerage,
                                     @RequestParam(value = "fuel_type", required = false) List<String> fuelTypeList,
                                     @RequestParam(value = "min_registrationTime", required = false) String minRegistrationTime,
                                     @RequestParam(value = "max_registrationTime", required = false) String maxRegistrationTime) {

        ModelAndView view = new ModelAndView();

        ArrayList<String> vehicleMakeList = new ArrayList<String>();
        ArrayList<String> vehicleModelList = new ArrayList<String>();
        ArrayList<String> vehicleTypeList = new ArrayList<String>(
                Arrays.asList("Cars", "Motorbikes", "Trucks", "Vans", "Buses", "newArrivals", "all"));

        List<Vehicle> vehicleList = new ArrayList<Vehicle>();


        if (checkVehicleType(vehicleTypeList, vehicleType)) {
            view.setViewName("details");
            if (vehicleType.equals("newArrivals")) {
                vehicleList = vehicleService.getNewArrivals();
            } else if (vehicleType.equals("all")) {
                vehicleList = vehicleService.getAllVehicles();
            } else {
                vehicleList = vehicleService.getAllVehiclesType(vehicleType);
            }

            // This make values in vehicleMakeList unique and delete vehicle from vehicleList when Make is in url param
            uniqueAndDeleteMake(vehicleList, vehicleMakeList, uncheckedMakeList);

            // This make values in vehicleModelList unique and delete vehicle from vehickeList when Model is in url param
            uniqueAndDeleteModel(vehicleList, vehicleModelList, uncheckedModelList);

            //filter by
            filterVehicleList(vehicleList, minPrice, maxPrice, minPower, maxPower, minKilometerage, maxKilometerage, fuelTypeList, minRegistrationTime, maxRegistrationTime);
            //sorting
            if (sort != null) {
                sortVehicleList(vehicleList, sort);
            }
            //block of addObject to view
            view.addObject("vehicleList", vehicleList);
            view.addObject("vehicleMakeList", vehicleMakeList);
            view.addObject("vehicleModelList", vehicleModelList);
            view.addObject("vehicleTypeList", vehicleTypeList);
            view.addObject("vehicleType", vehicleType);
            view.addObject("uncheckedMakeList", uncheckedMakeList);
            view.addObject("uncheckedModelList", uncheckedModelList);
            view.addObject("minPrice", minPrice);
            view.addObject("maxPrice", maxPrice);
            view.addObject("minPower", minPower);
            view.addObject("maxPower", maxPower);
            view.addObject("minKilometerage", minKilometerage);
            view.addObject("maxKilometerage", maxKilometerage);
            view.addObject("fuelTypeList", fuelTypeList);
            view.addObject("minRegistrationTime", minRegistrationTime);
            view.addObject("maxRegistrationTime", maxRegistrationTime);
            vehicleTypeList.remove(vehicleType);

        } else {
            view.setViewName("pageNotFound");
        }
        return view;
    }

    @RequestMapping(value = "/{vehicleType}/{vehicleMake}", method = RequestMethod.GET)
    public ModelAndView showVehiclesByMake(@PathVariable("vehicleType") String vehicleType,
                                           @PathVariable("vehicleMake") String vehicleMake,
                                           @RequestParam(value = "sort", required = false) String sort,
                                           @RequestParam(value = "makeList", required = false) List<String> uncheckedMakeList,
                                           @RequestParam(value = "modelList", required = false) List<String> uncheckedModelList,
                                           @RequestParam(value = "min_price", required = false) String minPrice,
                                           @RequestParam(value = "max_price", required = false) String maxPrice,
                                           @RequestParam(value = "min_power", required = false) String minPower,
                                           @RequestParam(value = "max_power", required = false) String maxPower,
                                           @RequestParam(value = "min_kilometerage", required = false) String minKilometerage,
                                           @RequestParam(value = "max_kilometerage", required = false) String maxKilometerage,
                                           @RequestParam(value = "fuel_type", required = false) List<String> fuelTypeList,
                                           @RequestParam(value = "min_registrationTime", required = false) String minRegistrationTime,
                                           @RequestParam(value = "max_registrationTime", required = false) String maxRegistrationTime) {

        ModelAndView view = new ModelAndView();

        ArrayList<String> vehicleModelList = new ArrayList<String>();
        ArrayList<String> vehicleTypeList = new ArrayList<String>(
                Arrays.asList("Cars", "Motorbikes", "Trucks", "Vans", "Buses"));

        List<Vehicle> vehicleList = new ArrayList<Vehicle>();


        if (checkVehicleType(vehicleTypeList, vehicleType)) {
            view.setViewName("details");

            //added all and newArrivals now to delete route all/renault and newArrivals/renault
            vehicleTypeList.add("newArrivals");
            vehicleTypeList.add("all");

            vehicleList = vehicleService.getAllVehiclesMake(vehicleType, vehicleMake);

            // This make values in vehicleModelList unique and delete vehicle from vehickeList when Model is in url param
            uniqueAndDeleteModel(vehicleList, vehicleModelList, uncheckedModelList);

            //filter by
            filterVehicleList(vehicleList, minPrice, maxPrice, minPower, maxPower, minKilometerage, maxKilometerage, fuelTypeList, minRegistrationTime, maxRegistrationTime);
            //sorting
            if (sort != null) {
                sortVehicleList(vehicleList, sort);
            }
            //block of addObject to view
            view.addObject("vehicleList", vehicleList);
            view.addObject("vehicleModelList", vehicleModelList);
            view.addObject("vehicleTypeList", vehicleTypeList);
            view.addObject("vehicleType", vehicleType);
            view.addObject("uncheckedMakeList", uncheckedMakeList);
            view.addObject("uncheckedModelList", uncheckedModelList);
            view.addObject("minPrice", minPrice);
            view.addObject("maxPrice", maxPrice);
            view.addObject("minPower", minPower);
            view.addObject("maxPower", maxPower);
            view.addObject("minKilometerage", minKilometerage);
            view.addObject("maxKilometerage", maxKilometerage);
            view.addObject("fuelTypeList", fuelTypeList);
            view.addObject("minRegistrationTime", minRegistrationTime);
            view.addObject("maxRegistrationTime", maxRegistrationTime);
            vehicleTypeList.remove(vehicleType);

        } else {
            view.setViewName("pageNotFound");
        }
        return view;
    }

    @RequestMapping(value = "/{vehicleType}/{vehicleMake}/{vehicleModel}", method = RequestMethod.GET)
    public ModelAndView showVehiclesByMakeAndModel(@PathVariable("vehicleType") String vehicleType,
                                                   @PathVariable("vehicleMake") String vehicleMake,
                                                   @PathVariable("vehicleModel") String vehicleModel,
                                                   @RequestParam(value = "sort", required = false) String sort,
                                                   @RequestParam(value = "makeList", required = false) List<String> uncheckedMakeList,
                                                   @RequestParam(value = "modelList", required = false) List<String> uncheckedModelList,
                                                   @RequestParam(value = "min_price", required = false) String minPrice,
                                                   @RequestParam(value = "max_price", required = false) String maxPrice,
                                                   @RequestParam(value = "min_power", required = false) String minPower,
                                                   @RequestParam(value = "max_power", required = false) String maxPower,
                                                   @RequestParam(value = "min_kilometerage", required = false) String minKilometerage,
                                                   @RequestParam(value = "max_kilometerage", required = false) String maxKilometerage,
                                                   @RequestParam(value = "fuel_type", required = false) List<String> fuelTypeList,
                                                   @RequestParam(value = "min_registrationTime", required = false) String minRegistrationTime,
                                                   @RequestParam(value = "max_registrationTime", required = false) String maxRegistrationTime) {

        ModelAndView view = new ModelAndView();

        ArrayList<String> vehicleModelList = new ArrayList<String>();
        ArrayList<String> vehicleTypeList = new ArrayList<String>(
                Arrays.asList("Cars", "Motorbikes", "Trucks", "Vans", "Buses"));

        List<Vehicle> vehicleList = new ArrayList<Vehicle>();


        if (checkVehicleType(vehicleTypeList, vehicleType)) {
            view.setViewName("details");

            //added all and newArrivals now to delete route all/renault and newArrivals/renault
            vehicleTypeList.add("newArrivals");
            vehicleTypeList.add("all");

            vehicleList = vehicleService.getAllVehiclesModel(vehicleType, vehicleMake, vehicleModel);

            // This make values in vehicleModelList unique and delete vehicle from vehickeList when Model is in url param
            uniqueAndDeleteModel(vehicleList, vehicleModelList, uncheckedModelList);

            //filter by
            filterVehicleList(vehicleList, minPrice, maxPrice, minPower, maxPower, minKilometerage, maxKilometerage, fuelTypeList, minRegistrationTime, maxRegistrationTime);
            //sorting
            if (sort != null) {
                sortVehicleList(vehicleList, sort);
            }
            //block of addObject to view
            view.addObject("vehicleList", vehicleList);
            view.addObject("vehicleTypeList", vehicleTypeList);
            view.addObject("vehicleType", vehicleType);
            view.addObject("uncheckedMakeList", uncheckedMakeList);
            view.addObject("uncheckedModelList", uncheckedModelList);
            view.addObject("minPrice", minPrice);
            view.addObject("maxPrice", maxPrice);
            view.addObject("minPower", minPower);
            view.addObject("maxPower", maxPower);
            view.addObject("minKilometerage", minKilometerage);
            view.addObject("maxKilometerage", maxKilometerage);
            view.addObject("fuelTypeList", fuelTypeList);
            view.addObject("minRegistrationTime", minRegistrationTime);
            view.addObject("maxRegistrationTime", maxRegistrationTime);
            vehicleTypeList.remove(vehicleType);

        } else {
            view.setViewName("pageNotFound");
        }
        return view;
    }

    public boolean checkVehicleType(ArrayList<String> vehicleTypeList, String vehicleType) {
        for (String vehicleFromList : vehicleTypeList) {
            if (vehicleFromList.trim().contains(vehicleType)) {
                return true;
            }
        }
        return false;
    }

    public void uniqueAndDeleteMake(List<Vehicle> vehicleList, ArrayList<String> vehicleMakeList, List<String> uncheckedMakeList) {
        // This make values in vehicleMakeList unique and delete vehicle from vehicleList when Make is in url param
        Iterator<Vehicle> vehicleListIterator = vehicleList.iterator();
        while (vehicleListIterator.hasNext()) {
            Vehicle vehicleFromList = vehicleListIterator.next();
            //filter by / making vehicleMakeList values unique
            if (!vehicleMakeList.contains(vehicleFromList.getMake())) {
                vehicleMakeList.add(vehicleFromList.getMake());
            }
            //deleting vehicle by make when when is param
            if (uncheckedMakeList != null && uncheckedMakeList.contains(vehicleFromList.getMake())) {
                vehicleListIterator.remove();
            }

        }

    }

    public void uniqueAndDeleteModel(List<Vehicle> vehicleList, ArrayList<String> vehicleModelList, List<String> uncheckedModelList) {
        // This make values in vehicleModelList unique and delete vehicle from vehickeList when Model is in url param
        Iterator<Vehicle> vehicleListIterator = vehicleList.iterator();
        while (vehicleListIterator.hasNext()) {
            Vehicle vehicleFromList = vehicleListIterator.next();
            //filter by / making vehicleModelList values unique
            if (!vehicleModelList.contains(vehicleFromList.getModel())) {
                vehicleModelList.add(vehicleFromList.getModel());
            }
            //deleting vehicle by model when when is param
            if (uncheckedModelList != null && uncheckedModelList.contains(vehicleFromList.getModel())) {
                vehicleListIterator.remove();
            }
        }

    }

    public void filterVehicleList(List<Vehicle> vehicleList,
                                  String minPrice,
                                  String maxPrice,
                                  String minPower,
                                  String maxPower,
                                  String minKilometerage,
                                  String maxKilometerage,
                                  List<String> fuelTypeList,
                                  String minRegistrationTime,
                                  String maxRegistrationTime) {

        Iterator<Vehicle> vehicleListIterator = vehicleList.iterator();
        boolean deletedVehicle;
        while (vehicleListIterator.hasNext()) {
            Vehicle vehicleFromList = vehicleListIterator.next();
            deletedVehicle = false;
            //deleting vehicle when vehiclePrice <= minPrice and maxPrice <= vehiclePrice
            if (minPrice != null) {
                //protection against null value and vehicle isn't already remove
                if (Integer.valueOf(minPrice) > vehicleFromList.getPrice()) {
                    vehicleListIterator.remove();
                    deletedVehicle = true;
                }
            }
            if (maxPrice != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                if (vehicleFromList.getPrice() > Integer.valueOf(maxPrice)) {
                    vehicleListIterator.remove();
                    deletedVehicle = true;
                }
            }
            //deleting vehicle when vehiclePower <= minPower and maxPower <= vehiclePower
            if (minPower != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                if (Integer.valueOf(minPower) > vehicleFromList.getPower()) {
                    vehicleListIterator.remove();
                    deletedVehicle = true;
                }
            }
            if (maxPower != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                if (vehicleFromList.getPower() > Integer.valueOf(maxPower)) {
                    vehicleListIterator.remove();
                    deletedVehicle = true;
                }
            }
            //deleting vehicle when vehicleKilometerage <= minKilometerage and maxKilometerage <= vehicleKilometerage
            if (minKilometerage != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                if (Integer.valueOf(minKilometerage) > vehicleFromList.getKilometer()) {
                    vehicleListIterator.remove();
                    deletedVehicle = true;
                }
            }
            if (maxKilometerage != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                if (vehicleFromList.getKilometer() > Integer.valueOf(maxKilometerage)) {
                    vehicleListIterator.remove();
                    deletedVehicle = true;
                }
            }
            //deleting vehicle when fuelTypeList equals vehicleFuelType
            if (fuelTypeList != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                if (fuelTypeList.contains(vehicleFromList.getFuelType())) {
                    vehicleListIterator.remove();
                    deletedVehicle = true;
                }
            }

            //deleting vehicle when vehicleFirstRegistration <= minFirstRegistration and maxFirstRegistration <= vehicleFirstRegistration
            DateFormat dateFormat = new SimpleDateFormat("MMMM yyyy", Locale.US);
            if (minRegistrationTime != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                try {
                    if (vehicleFromList.getFirstRegistration().before(dateFormat.parse(minRegistrationTime))) { //reserved for date
                        vehicleListIterator.remove();
                        deletedVehicle = true;
                    }
                } catch (ParseException e) {
                }

            }
            if (maxRegistrationTime != null && !deletedVehicle) {
                //protection against null value and vehicle isn't already remove
                try {
                    if (vehicleFromList.getFirstRegistration().after(dateFormat.parse(maxRegistrationTime))) { // reserved for date
                        vehicleListIterator.remove();
                        deletedVehicle = true;
                    }
                } catch (ParseException e) {
                }

            }
        }
    }

    public void sortVehicleList(List<Vehicle> vehicleList, String sort) {
        switch (sort) {
            case "newly":
                Collections.sort(vehicleList, new Comparator<Vehicle>() {
                    @Override
                    public int compare(Vehicle a1, Vehicle a2) {
                        return a2.getCreateDate().compareTo(a1.getCreateDate());
                    }
                });
                break;
            case "alpha":
                Collections.sort(vehicleList, new Comparator<Vehicle>() {
                    @Override
                    public int compare(Vehicle a1, Vehicle a2) {
                        return a1.getMake().compareTo(a2.getMake());
                    }
                });
                break;
            case "highest":
                Collections.sort(vehicleList, new Comparator<Vehicle>() {
                    @Override
                    public int compare(Vehicle a1, Vehicle a2) {
                        return a2.getPrice() - a1.getPrice();
                    }
                });
                break;
            case "lowest":
                Collections.sort(vehicleList, new Comparator<Vehicle>() {
                    @Override
                    public int compare(Vehicle a1, Vehicle a2) {
                        return a1.getPrice() - a2.getPrice();
                    }
                });
                break;
            default:
                break;
        }

    }
}
