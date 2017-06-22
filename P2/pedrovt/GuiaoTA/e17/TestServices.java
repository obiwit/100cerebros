package e17;
import static java.lang.System.*;

public class TestServices
{
  public static void main(String[] args) {

    String [] names = { "A", "B", "C" };

    ServiceManager sm = new ServiceManager(names,10);

    // descomentar para testar
    // acrescentar novos testes se necessário
    
    sm.queueFor("pedro","A");
    sm.queueFor("pedro","B");
    sm.queueFor("joao","B");
    sm.queueFor("maria","C");
    sm.queueFor("ana","A");
    sm.serveNext("A");
    sm.serveNext("B");
    sm.serveNext("C");
    
    sm.endService("A",10);
    sm.endService("B",10);
    sm.endService("C",12);
    
    if (sm.clientPending("A")) 
      out.println("Cliente pendente no serviço A");
    if (sm.clientPending("B")) 
      out.println("Cliente pendente no serviço B");
    if (sm.clientPending("C")) 
      out.println("Cliente pendente no serviço C");

    out.println("Tempo máximo de serviço: "+sm.maxServiceTime());
    
    /*
    if (sm.validServiceNameRec("D")) out.println("Nome de serviço válido: D");
    else out.println("Nome de serviço inválido: D");
    */

    sm.queueFor("luis","A");
    sm.queueFor("tomas","A");
    sm.queueFor("marta","A");
    sm.queueFor("antonia","A");
    String [] a = sm.alphabeticalClientList("A");
    out.print("Lista alfabetica dos clientes na fila do serviço A: ");
    for(int i=0; i<a.length; i++) 
    	out.print(a[i]+" ");
    out.println();
    out.println();
  }

}

