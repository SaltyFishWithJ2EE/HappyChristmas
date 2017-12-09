package bean;

public class Car {
    private int carId;
    private String carType;
    private String carOwner;
    private String carBrand;
    private int carSeat;

    public int getCarId() {
        return carId;
    }

    public Car setCarId(int carId) {
        this.carId = carId;
        return this;
    }

    public String getCarType() {
        return carType;
    }

    public Car setCarType(String carType) {
        this.carType = carType;
        return this;
    }

    public String getCarOwner() {
        return carOwner;
    }

    public Car setCarOwner(String carOwner) {
        this.carOwner = carOwner;
        return this;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public Car setCarBrand(String carBrand) {
        this.carBrand = carBrand;
        return this;
    }

    public int getCarSeat() {
        return carSeat;
    }

    public Car setCarSeat(int carSeat) {
        this.carSeat = carSeat;
        return this;
    }
}
