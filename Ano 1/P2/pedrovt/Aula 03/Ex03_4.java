import static java.lang.System.*;

public class Ex03_4
{
  public static void main(String[] args)
  {
    Agenda agenda = new Agenda();
    agenda.novaTarefa(new Tarefa(new Data1(14,6,2012), new Data1(27,6,2012), "Prog2: APF"));
    agenda.novaTarefa(new Tarefa(new Data1(2,7,2012), new Data1(13,7,2012), "Prog2: Recurso"));
    agenda.novaTarefa(new Tarefa(new Data1(6,6,2012), new Data1(6,6,2012), "Prog2: ACITP2"));
    agenda.novaTarefa(new Tarefa(new Data1(9,5,2012), new Data1(9,5,2012), "Prog2: AIP"));
    agenda.novaTarefa(new Tarefa(new Data1(22,3,2012), new Data1(27,3,2012), "Prog2: ACITP1"));
    agenda.escreve();
    out.println();
    Data1 d1 = new Data1(27,3,2012);
    Data1 d2 = new Data1(15,6,2012);
    Tarefa[] todo = agenda.compromissos(d1, d2);
    out.print("Compromissos de ");
    d1.escreve();
    out.print(" a ");
    d2.escreve();
    out.println(":");
    for(int i = 0; i < todo.length; i++)
      todo[i].escreve();
  }
}

