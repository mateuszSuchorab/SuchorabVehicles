package com.suchorab.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * @author Mateusz Suchorab <suchorab.mateusz@gmail.com>
 */
@Entity
@Table(name = "vehicles")
public class Vehicle implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long vehicleId;

    @Column(name = "Make")
    private String make;

    @Column(name = "Model")
    private String model;

    @Column(name = "FirstRegistration")
    private Date firstRegistration;

    @Column(name = "Kilometer")
    private int kilometer;

    @Column(name = "Price")
    private int price;

    @Column(name = "Accepted")
    private boolean accepted;

    @Column(name = "FuelType")
    private String fuelType;

    @Column(name = "Power")
    private int power;

    @Column(name = "VehicleType")
    private String vehicleType;

    @Column(name = "CreateDate")
    private Date createDate;

    @Column (name ="Image1")
    private byte[] image1;

    @Column (name ="Image2")
    private byte[] image2;

    @Column (name ="Image3")
    private byte[] image3;

    @Column (name ="Image4")
    private byte[] image4;

    @Column(name = "Details")
    private String details;


    @ManyToOne
    @JoinColumn(name = "id")
    private AppUser appUser;

    public Long getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(Long vehicleId) {
        this.vehicleId = vehicleId;
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

    public Date getFirstRegistration() {
        return firstRegistration;
    }

    public void setFirstRegistration(Date firstRegistration) {
        this.firstRegistration = firstRegistration;
    }

    public int getKilometer() {
        return kilometer;
    }

    public void setKilometer(int kilometer) {
        this.kilometer = kilometer;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public boolean getAccepted() {
        return accepted;
    }

    public void setAccepted(boolean accepted) {
        this.accepted = accepted;
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public AppUser getUser() {
        return appUser;
    }

    public void setUser(AppUser user) {
        this.appUser = appUser;
    }

    public byte[] getImage1() {
        return image1;
    }

    public void setImage1(byte[] image1) {
        this.image1 = image1;
    }

    public byte[] getImage2() {
        return image2;
    }

    public void setImage2(byte[] image2) {
        this.image2 = image2;
    }

    public byte[] getImage3() {
        return image3;
    }

    public void setImage3(byte[] image3) {
        this.image3 = image3;
    }

    public byte[] getImage4() {
        return image4;
    }

    public void setImage4(byte[] image4) {
        this.image4 = image4;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vehicleId != null ? vehicleId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Vehicle)) {
            return false;
        }
        Vehicle other = (Vehicle) object;
        if ((this.vehicleId == null && other.vehicleId != null) || (this.vehicleId != null && !this.vehicleId.equals(other.vehicleId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.suchorab.projectmaven.model.Vehicle[ vehicleId=" + vehicleId + " ]";
    }
}