//import static java.lang.System.*;

public class Ex03_3
{
  public static void main(String[] args)
  {
    Tarefa[] tarefas = new Tarefa[args.length / 7]; // argumentos em grupos de sete (data-inicio data-fim texto)
    for(int i = 0; i < tarefas.length; i++)
    {
      int dia, mes, ano;
      dia = Integer.parseInt(args[i*7]);
      mes = Integer.parseInt(args[i*7+1]);
      ano = Integer.parseInt(args[i*7+2]);
      Data1 inicio = new Data1(dia, mes, ano);
      dia = Integer.parseInt(args[i*7+3]);
      mes = Integer.parseInt(args[i*7+4]);
      ano = Integer.parseInt(args[i*7+5]);
      Data1 fim = new Data1(dia, mes, ano);
      String texto = args[i*7+6];
      tarefas[i] = new Tarefa(inicio, fim, texto);
    }
    for(int i = 0; i < tarefas.length; i++)
      tarefas[i].escreve();
  }
}

