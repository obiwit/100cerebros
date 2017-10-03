import java.util.*;
public class p36 {
	static Scanner read = new Scanner(System.in);
	public static void main (String[] args) {
		
		JData[] dataArray = new JData[2];
		int opcao;
		do { 
			printMenu();
			System.out.print("Opcao: ");
			opcao = read.nextInt();
			System.out.println();
			switch (opcao) {
				case 1:
					dataArray[1] = dataArray[0];
					dataArray[0] = new JData();
					dataArray[0].printData();
					System.out.println(); read.nextLine();
					break;
				case 2:
					System.out.print("Dia: ");
					int dia = read.nextInt();
					System.out.print("Mes: ");
					int mes = read.nextInt();
					System.out.print("Ano: ");
					int ano = read.nextInt();
					dataArray[1] = dataArray[0];
					dataArray[0] = new JData(dia, mes, ano);
					System.out.println();
					dataArray[0].printData();
					System.out.println(); read.nextLine();
					break;
				case 3:
					if (dataArray[0].validarData(dataArray[0].getDia(), dataArray[0].getMes(), dataArray[0].getAno())) {
						System.out.println("DATA VALIDA!");
					}
					else {
						System.out.println("DATA INVALIDA");
					}
					read.nextLine();
					break;
				case 4:
					dataArray[0].printData();
					System.out.println(); read.nextLine();
					break;
				case 5:
					dataArray[0].printDataExtenso(dataArray[0].getDia(), dataArray[0].getMes(), dataArray[0].getAno());
					System.out.println(); read.nextLine();
					break;
				case 6:
					dataArray[0].vaiParaOntem();
					dataArray[0].printData();
					System.out.println(); read.nextLine();
					break;
				case 7:
					dataArray[0].vaiParaAmanha();
					dataArray[0].printData();
					System.out.println(); read.nextLine();
					break;
				case 8:
					dataArray[0].printData();
					System.out.print(" = ");
					dataArray[1].printData();
					if (dataArray[0].dataIgual(dataArray[1])) {	
						System.out.print("? VERDADEIRO");
					}
					else {
						System.out.print("? FALSO");
					}
					System.out.println(); read.nextLine();
					break;
				case 9:
					dataArray[0].printData();
					System.out.print(" > ");
					dataArray[1].printData();
					if (dataArray[0].dataMaior(dataArray[1])) {	
						System.out.print("? VERDADEIRO");
					}
					else {
						System.out.print("? FALSO");
					}
					System.out.println(); read.nextLine();
					break;
				case 10:
					dataArray[0].printData();
					System.out.print(" > ");
					dataArray[1].printData();
					if (dataArray[0].dataMenor(dataArray[1])) {	
						System.out.print("? VERDADEIRO");
					}
					else {
						System.out.print("? FALSO");
					}
					System.out.println(); read.nextLine();
					break;
				case 11:
					dataArray[0].printData();
					System.out.print(" - ");
					dataArray[1].printData();
					System.out.print(" = ");
					System.out.print(dataArray[0].subtract(dataArray[1]));
					System.out.println(); read.nextLine();
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
							 "8. Verificar se ultima data igual a penultima\n" +
							 "9. Verificar se ultima data maior que penultima\n" +
							 "10. Verificar se ultima data menor que penultima\n" +
							 "11. Calcular: Ultima data - Penultima data\n" +
							 "0. Termina\n\n" +
							 
							 "NOTA: Se nao houver outra indicacao, todas as operacoes\n" +
							 "fazem-se sobre o ultimo objecto criado\n\n");
	}	
}
