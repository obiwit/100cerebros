import java.util.*;
public class p25 {
	static Scanner read = new Scanner(System.in);
	public static void main (String[] args) {
		
		Data data = new Data();
		int opcao;
		do { 
			printMenu();
			System.out.print("Opcao: ");
			opcao = read.nextInt();
			switch (opcao) {
				case 1:
					data = new Data();
					data.printData();
					break;
				case 2:
					System.out.print("Dia: ");
					int dia = read.nextInt();
					System.out.print("Mes: ");
					int mes = read.nextInt();
					System.out.print("Ano: ");
					int ano = read.nextInt();
					data = new Data(dia, mes, ano);
					read.nextLine();
					data.printData();
					break;
				case 3:
					Data.validarData(data.getDia(), data.getMes(), data.getAno());
					break;
				case 4:
					data.printData();
					break;
				case 5:
					data.printDataExtenso(data.getDia(), data.getMes(), data.getAno());
					break;
				case 6:
					data.vaiParaOntem();
					data.printData();
					break;
				case 7: // opcao = 7
					data.vaiParaAmanha();
					data.printData();
					break;
				default:
					System.out.println("Opcao invalida");
				
			}
			System.out.println("\n---Press any key---");
			String PHONY = read.nextLine();
		} while (opcao != 0);				 	
	}
	
	public static void printMenu() {
			System.out.print("\n1. Cria novo objecto com a data actual\n" +
							 "2. Cria novo objecto com uma qualquer data\n" +
							 "3. Indica se a data e valida\n" +
							 "4. Escreve data\n" +
							 "5. Escreve data por extenso\n" +
							 "6. Dia anterior\n" +
							 "7. Dia seguinte\n" +
							 "0. Termina\n\n" +
							 
							 "NOTA: Se nao houver outra indicacao, todas as operacoes\n" +
							 "fazem-se sobre o ultimo objecto criado\n\n");
	}	
}
