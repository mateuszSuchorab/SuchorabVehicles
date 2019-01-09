package com.suchorab.service.impl;

import com.suchorab.DAO.AcceptableVehicleDAO;
import com.suchorab.model.AcceptableVehicle;
import com.suchorab.service.AcceptableVehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class AcceptableVehicleServiceImpl implements AcceptableVehicleService {

    @Autowired
    private AcceptableVehicleDAO acceptableVehicleDAO;

    @Override
    public List<AcceptableVehicle> getAllAcceptableVehicle() {
        return acceptableVehicleDAO.getAllAcceptableVehicle();
    }
}
