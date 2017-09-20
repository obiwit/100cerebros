package e02;

public class Door {
   // Fields
   private int id1, id2;		//IDs of the rooms connected by the door
   private double width, height;
   
   // Constructor
   public Door(int r1, int r2, double w, double h) {
	   this.id1 = r1;
	   this.id2 = r2;
	   this.width = w;
	   this.height = h;
   }
   
   // Getters
   public double area() {
	   return this.width * this.height;
   }
   
   public int id1(){
	   return this.id1;
   }
   
   public int id2(){
	   return this.id2;
   }
}

