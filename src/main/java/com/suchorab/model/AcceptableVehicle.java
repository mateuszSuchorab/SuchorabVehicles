package com.suchorab.model;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@Table(name = "acceptableVehicles")
public class AcceptableVehicle {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int acceptableVehicleId;

    @Column(name = "Make")
    private String make;

    @Column(name = "Model")
    private String model;

    @Column(name = "VehicleType")
    private String vehicleType;

    public int getAcceptableVehicleId() {
        return acceptableVehicleId;
    }

    public void setAcceptableVehicleId(int acceptableVehicleId) {
        this.acceptableVehicleId = acceptableVehicleId;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }
}
