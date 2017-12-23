package aula5;

import aula5.prob2.Bicycle;
import aula5.prob2.BicyclePolice;
import aula5.prob2.Car;
import aula5.prob2.CarPolice;
import aula5.prob2.FuelType;
import aula5.prob2.Motor;
import aula5.prob2.Motorcycle;
import aula5.prob2.MotorcyclePolice;
import aula5.prob2.Police;
import aula5.prob2.PoliceType;
import aula5.prob2.Vehicle;
import aula5.utils.DynamicArray;
import aula5.utils.UtilCompare;

/**
 * Prob2
 * 
 * @author Beatriz Borges, 79857 | Pedro Teixeira, 84715, MIECT
 */

public class Prob2 {

	public static void main(String[] args) {
		// Create Motors and print
		Motor m1 = new Motor(1000, 200, 4, FuelType.Biodiesel);
		Motor m2 = new Motor(8000, 1000, 7, FuelType.Gasoline);
		System.out.println("Motor 1:\n" + m1);
		System.out.println("Motor 2:\n" + m2);

		// Create Cars and CarPolice
		Car c1 = new Car(2017, "Blank", 4, 400, m2);
		Car c2 = new Car(1997, "Yellow", 4, 170, m1);
		CarPolice c3 = new CarPolice(1990, "Red", 4, 170, m1, PoliceType.PJ);

		System.out.println(c3.setLicensePlate("29-BB-0s0")); // false (invalid License Plate) 
		System.out.println(c3.setLicensePlate("29-BB-00")); // true (valid License Plate)

		// Create Motorcycle and MotorcyclePolice
		Motorcycle mc1 = new Motorcycle(2000, "Orange", 4, 400, m1);
		MotorcyclePolice mc2 = new MotorcyclePolice(2000, "Orange", 4, 400, m1, PoliceType.GNR);
		mc2.setLicensePlate("02-BF-14");

		// Create Bicycles and BicyclePolice
		Bicycle b1 = new Bicycle(2005, "Purple", 2, 10);
		BicyclePolice b2 = new BicyclePolice(2008, "Black", 2, 100, PoliceType.INEM);
		b2.setLicensePlate("98-TT-00");

		// Create DynamicArray of Vehicle, VehicleMotors and Police
		DynamicArray<Vehicle> vehicles = new DynamicArray<>();
		vehicles.add(c1);
		vehicles.add(c2);
		vehicles.add(c3);
		vehicles.add(mc1);
		vehicles.add(mc2);
		vehicles.add(b1);
		vehicles.add(b2);

		DynamicArray<Police> policeVehicles = new DynamicArray<>();
		policeVehicles.add(c3);
		policeVehicles.add(mc2);
		policeVehicles.add(b2);

		// Print Dynamic Array of Vehicles
		System.out.println("\n--------------------\nVehicles: \n" + vehicles);
		System.out.println("\n--------------------\nPolice Vehicles: \n" + policeVehicles);

		// ordered vehicles 
		Vehicle[] vehiclesArray = vehicles.toArray(new Vehicle[vehicles.size()]);
		UtilCompare.sortArray(vehiclesArray);
		System.out.println(UtilCompare.findMax(vehiclesArray));
		System.out.println("\n--------------------\nVehicles (ordered by year): \n");
		for (Vehicle v : vehiclesArray) System.out.println(v);

	}

}
