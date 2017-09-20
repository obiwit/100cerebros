package e01;
import static java.lang.System.*;
import java.util.Scanner;
//import jogos.*;

public class JogaJogoDoGalo {
	public static void main(String[] args) {
		char jogador1 = 'X';
		char jogador2 = 'O';

		// Scores
		int[][] scores = new int[2][1]; 		// works kinda like a dictionary... 

		// Plays Game
		int i = 0; 								// counts how many games are played
		
		while (scores[0][0] < 3 && scores[1][0] <3 && i < 10) {
			i++;
			out.println("--------------------");
			out.println("Jogo " + i);
			playGame(jogador1, jogador2, scores);
			out.printf("\nPontuações: \nJogador 1: %d\nJogador 2: %d\n", scores[0][0], scores[1][0]);
		}
	}

	public static void playGame(char jogador1, char jogador2, int[][] scores) {
		Scanner sin = new Scanner(in);

		JogoDoGalo jogo = new JogoDoGalo(jogador1, jogador2);
		int lin, col;
		jogo.mostraTabuleiro();
		while (!jogo.terminado()) {
			out.print("(lin col): ");
			lin = sin.nextInt();
			col = sin.nextInt();
			jogo.jogada(lin, col);
			jogo.mostraTabuleiro();
		}
		out.println();
		if (jogo.ultimoJogadorGanhou()) {
			out.println("Jogador "+jogo.ultimoJogador()+" ganhou!");		
			
			//Updates scores
			if (jogo.ultimoJogador() == 'X') {
				scores[0][0]++;
			}
			else if (jogo.ultimoJogador() == 'O') {
				scores[1][0]++;
			}
			
		}
		else
			out.println("Jogo empatado!");


	}
}
