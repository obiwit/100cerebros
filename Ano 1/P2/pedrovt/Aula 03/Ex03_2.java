import static java.lang.System.*;

public class Ex03_2
{
   public static void main(String[] args)
   {
      Data1[] datas = new Data1[args.length / 3]; // argumentos em grupos de tres
      for(int i = 0; i < datas.length; i++)
      {
         int dia = Integer.parseInt(args[i*3]);
         int mes = Integer.parseInt(args[i*3+1]);
         int ano = Integer.parseInt(args[i*3+2]);
         datas[i] = new Data1(dia, mes, ano);
      }
      sort(datas);
      for(int i = 0; i < datas.length; i++)
      {
         out.printf("%02d - ", (i+1));
         datas[i].escreve();
         out.println();
      }
   }

   static void sort(Data1[] datas)
   {
      for(int i = 0; i < datas.length; i++)
         for(int j = i+1; j < datas.length; j++)
           if (datas[j].menorDoQue(datas[i]))
           {
              Data1 tmp = datas[j];
              datas[j] = datas[i];
              datas[i] = tmp;
           }
   }
}

