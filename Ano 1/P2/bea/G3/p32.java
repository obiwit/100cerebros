import static java.lang.System.*;

public class p32
{
  public static void main(String[] args)
  {
    Data[] datas = new Data[args.length / 3]; // argumentos em grupos de tres
    for(int i = 0; i < datas.length; i++)
    {
      int dia = Integer.parseInt(args[i*3]);
      int mes = Integer.parseInt(args[i*3+1]);
      int ano = Integer.parseInt(args[i*3+2]);
      datas[i] = new Data(dia, mes, ano);
    }
    sort(datas);
    for(int i = 0; i < datas.length; i++)
    {
      out.printf("%02d - ", (i+1));
      datas[i].escreve();
      out.println();
    }
  }

  static void sort(Data[] datas)
  {
    for(int i = 0; i < datas.length; i++)
      for(int j = i+1; j < datas.length; j++)
        if (datas[j].menorDoQue(datas[i]))
        {
          Data tmp = datas[j];
          datas[j] = datas[i];
          datas[i] = tmp;
        }
  }
}

