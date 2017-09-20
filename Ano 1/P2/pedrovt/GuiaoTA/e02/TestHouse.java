package e02;
import static java.lang.System.*;

public class TestHouse
{
   public static void main(String[] args)
   {
      House h = new House("apartment",7,4);

      Point p1  = new Point( 0.0, 2.0);
      Point p2  = new Point(22.0, 5.0);
      Point p3  = new Point( 8.0, 0.0);
      Point p4  = new Point( 8.0, 5.0);
      Point p5  = new Point( 0.0, 8.0);
      Point p6  = new Point(22.0, 8.0);
      Point p7  = new Point(11.0,14.0);
      Point p8  = new Point( 8.0, 8.0);
      Point p9  = new Point(11.0, 8.0);
      Point p10 = new Point(22.0,14.0);
      Point p11 = new Point(22.0, 0.0);
      Point p12 = new Point(28.0, 5.0);
      Point p13 = new Point(28.0,14.0);
      Point p14 = new Point(28.0,20.0);

      /* Descomentar o que precisar para testar */

      int hall = h.addRoom(new Room(p1,p8, "hall"));
      int sala = h.addRoom(new Room(p3,p2, "sala"));
      int corr = h.addRoom(new Room(p4,p6, "corredor"));
      int q1   = h.addRoom(new Room(p9,p10, "quarto"));
      int q2   = h.addRoom(new Room(p5,p7, "quarto"));
      int wc   = h.addRoom(new Room(p11,p12, "wc"));
      int coz  = h.addRoom(new Room(p2,p13, "cozinha"));
      int copa = h.addRoom(new Room(p10,p14, "copa"));

      out.println("\nAntes de introduzir portas: ");
      out.println("- Portas registadas: " + h.numDoors());
      out.println("- Capacidade actual para portas  : " + h.maxNumDoors());

      h.addDoor(new Door(hall,sala,0.8,2.0));
      h.addDoor(new Door(hall,corr,1.0,2.0));
      h.addDoor(new Door(sala,corr,1.0,2.0));
      h.addDoor(new Door(sala,wc,0.8,2.0));
      h.addDoor(new Door(corr,coz,0.8,2.0));
      h.addDoor(new Door(corr,q2,0.8,2.0));
      h.addDoor(new Door(corr,q1,0.8,2.0));
      h.addDoor(new Door(copa,coz,0.8,2.0));

      out.println("\nDepois de introduzir divisões: ");
      out.println("- Portas registadas: " + h.numDoors());
      out.println("- Capacidade actual para portas  : " + h.maxNumDoors());
      
      int n = h.maxDoorsInAnyRoom();
      out.println("\nNúmero máximo de portas numa divisão: "+n);
		
      int roomId = h.roomClosestToRoomType("wc");
      out.println("\nDivisão mais próxima de um WC: "+roomId + " ("+h.room(roomId).roomType()+")");
      roomId = h.roomClosestToRoomType("quarto");
      out.println("\nDivisão mais próxima de um quarto: "+roomId + " ("+h.room(roomId).roomType()+")");
      
     
   }
}


