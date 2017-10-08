package g3;

import g3.ex3.driver.Driver;
import g3.ex3.driver.DrivingLicense;
import g3.ex3.vehicles.Car;
import g3.ex3.vehicles.Motorcycle;
import g3.ex3.vehicles.TruckGoods;
import g3.ex3.vehicles.TruckPassenger;
import g3.ex3.vehicles.Vehicle;
import g3.people.Date;

/**
 * Ex3_VehiclesTest
 * The following restrictions were implemented on the vehicles (not necessarily according to the law)
 * Vehicle Type | Cylinder Capacity | Power | Gross Weight | License | Max Passengers
 * Car    			| >= 500  | >= 50  | <= 3500 and > 0 | B | between 1 and 9
 * Motorcycle    	| >= 50   | >= 0   | <= 3500 and > 0 | A | between 1 and 2
 * Truck  			| >= 1000 | >= 100 | >= 3500         | No restriction | >9

 * Derived Classes of Truck
 * Truck Goods  	| >= 1000 | >= 100 | >= 3500 | C | > 9
 * Truck Passenger  | >= 1000 | >= 100 | >= 3500 | D | > 9

 * @author Pedro Teixeira, 84715, MIECT
 */

public class Ex3_VehiclesTest {

	public static void main(String[] args) {
		// Creating the vehicles and testing restrictions

		System.out.println("-------");
		Vehicle car1 = new Car();
		System.out.println(car1.setCylinderCapacity(1000)); 		// true
		System.out.println(car1.setPower(100)); 					// true
		System.out.println(car1.setGrossWeight(35000));    			// false
		System.out.println(car1.setGrossWeight(3500));      		// true	
		System.out.println(car1.setMaxPassengers(39)); 				// false
		System.out.println(car1.setMaxPassengers(3)); 				// true
		System.out.println("\n" + car1);

		System.out.println("-------");
		Vehicle motorcycle1 = new Motorcycle();
		System.out.println(motorcycle1.setCylinderCapacity(2)); 	// false
		System.out.println(motorcycle1.setCylinderCapacity(200));   // true
		motorcycle1.setPower(20);
		motorcycle1.setGrossWeight(10);
		motorcycle1.setMaxPassengers(1);
		System.out.println("\n" + motorcycle1);

		System.out.println("-------");
		Vehicle truck1 = new TruckGoods();
		System.out.println(truck1.setGrossWeight(9)); 				// false
		System.out.println(truck1.setCylinderCapacity(200));   		// false
		truck1.setCylinderCapacity(1000); 		
		truck1.setPower(100); 					
		truck1.setGrossWeight(35000);    		
		truck1.setGrossWeight(3500);      		
		truck1.setMaxPassengers(39); 				
		truck1.setMaxPassengers(3); 	
		System.out.println("\n" + truck1);

		System.out.println("-------");
		Vehicle truck2 = new TruckPassenger();
		truck2.setCylinderCapacity(1000); 		
		truck2.setPower(100); 					
		truck2.setGrossWeight(35000);    		
		truck2.setGrossWeight(3500);      		
		truck2.setMaxPassengers(39); 				
		truck2.setMaxPassengers(3); 				
		System.out.println("\n" + truck2);

		System.out.println("-------");
		Driver d = new Driver("João", 242154, new Date(04, 10, 1990));
		d.addLicense(DrivingLicense.A);
		d.addLicense(DrivingLicense.B);
		d.addLicense(DrivingLicense.C);
		System.out.println(d.addVehicle(car1));			//true
		System.out.println(d.addVehicle(motorcycle1));	//true
		System.out.println(d.addVehicle(truck1));		//true
		System.out.println(d.addVehicle(truck2));		//false : driver doesn't have D Driving License
		d.addLicense(DrivingLicense.D);
		System.out.println(d.addVehicle(truck2));		//true : driver now has D Driving License
		System.out.println("\n" + d);
	}

}
