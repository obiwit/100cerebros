package aula3;

import aula3.prob3.Car;
import aula3.prob3.Driver;
import aula3.prob3.GoodsTruck;
import aula3.prob3.License;
import aula3.prob3.Motorcycle;
import aula3.prob3.PassengerTruck;

public class Prob3 {

	public static void main(String[] args) {
		Driver driver = new Driver(12345678, License.B);
		Car car = new Car(200, 150, 5, 1000);
		Motorcycle motorcycleLess125 = new Motorcycle(120, 100, 2, 300); // motorcycle with less than 125 cm^3
		Motorcycle motorcycleMore125 = new Motorcycle(140, 100, 2, 300); // motorcycle with more than 125 cm^3
		GoodsTruck goodsTruck = new GoodsTruck(200, 80, 3, 3000);
		PassengerTruck passengerTruck = new PassengerTruck(170, 100, 20, 5000);
		
		System.out.println("Can drive motorcycle with less than 125 cm^3: "+ driver.canDrive(motorcycleLess125));
		System.out.println("Can drive motorcycle with more than 125 cm^3: "+ driver.canDrive(motorcycleMore125));
		System.out.println("Can drive car: "+ driver.canDrive(car));
		System.out.println("Can drive a goods truck: "+ driver.canDrive(goodsTruck));
		System.out.println("Can drive a passenger truck: "+ driver.canDrive(passengerTruck));
	}

}
