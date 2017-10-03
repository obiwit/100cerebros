package e02;

public class Room {

   public Room(Point bl, Point tr, String roomType) {
      this.bottomleft = bl;
      this.topright = tr;
      this.roomType = roomType;
   }

   public Point geomCenter() {
      return bottomleft.halfWayTo(topright);
   }

   public double width() {
      double dx = topright.x()-bottomleft.x();
      double dy = topright.y()-bottomleft.y();
      if (dx<dy) return dx;
      return dy;
   }

   public double length() {
      double dx = topright.x()-bottomleft.x();
      double dy = topright.y()-bottomleft.y();
      if (dx<dy) return dy;
      return dx;
   }

   public double area() {
      double dx = topright.x()-bottomleft.x();
      double dy = topright.y()-bottomleft.y();
      return dx*dy;
   }

   public String roomType() {
      return roomType;
   }

   private Point bottomleft;
   private Point topright;
   private String roomType;

}


