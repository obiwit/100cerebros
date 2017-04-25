	package e01;
//package jogos;

import static java.lang.System.*;

public class JogoDoGalo {
  public static final char VAZIO = '\0';
  public final char JOGADOR1;
  public final char JOGADOR2;
  
  /*
   * Inicia jogo.
   * O primeiro a jogar será j1
   */
  
  public JogoDoGalo(char j1, char j2) {
    assert j1!=j2;
    assert j1!=VAZIO && j2!=VAZIO;

    tabuleiro = new char[3][3];
    for(int l = 0; l < 3; l++)			//inicializa o tabuleiro
      for(int c = 0; c < 3; c++)
        tabuleiro[l][c] = VAZIO;
    JOGADOR1 = j1;
    JOGADOR2 = j2;
    ultimoJogador = VAZIO;
    ultimaLin = ultimaCol = -1;
    numJogadas = 0;
  }
  
  public char ultimoJogador() { 
	  return ultimoJogador; 
  }
  
  public boolean coordValidas(int lin, int col) {
    return 1<=lin && lin<=3 && 1<=col && col<=3;
  }
  
  public boolean posicaoVazia(int lin, int col) {
    assert coordValidas(lin, col);

    return tabuleiro[lin-1][col-1] == VAZIO;
  }
  
  boolean terminado() {
    return ultimoJogador != VAZIO && ultimoJogadorGanhou() || numJogadas == 3*3;
  }

  public boolean jogadaValida(int lin, int col) {
    return coordValidas(lin, col) && posicaoVazia(lin, col) && !terminado();
  }

  public boolean ultimoJogadorGanhou() {
    assert ultimoJogador() != VAZIO;

    boolean result;

       // vertical |
    result = contaIgual(ultimaLin, ultimaCol, -1, 0) +
             1 +
             contaIgual(ultimaLin, ultimaCol, +1, 0) == 3;

       // horizontal -
    if (!result)
      result = contaIgual(ultimaLin, ultimaCol, 0, -1) +
               1 +
               contaIgual(ultimaLin, ultimaCol, 0, +1) == 3;
       // diagonal \
    if (!result)
      result = contaIgual(ultimaLin, ultimaCol, -1, -1) +
               1 +
               contaIgual(ultimaLin, ultimaCol, +1, +1) == 3;
       // diagonal /
    if (!result)
      result = contaIgual(ultimaLin, ultimaCol, -1, +1) +
               1 +
               contaIgual(ultimaLin, ultimaCol, +1, -1) == 3;

    return result;
  }
  
  public void jogada(int lin, int col) {
    assert jogadaValida(lin, col);

    ultimoJogador = (ultimoJogador != JOGADOR1) ? JOGADOR1 : JOGADOR2;
    ultimaLin = lin-1;
    ultimaCol = col-1;
    tabuleiro[ultimaLin][ultimaCol] = ultimoJogador;
    numJogadas++;
  }
  
  public void mostraTabuleiro() {
    out.println();
    out.println("    1   2   3");
    for (int lin=1; lin<=3; lin++) {
      out.printf("%2d ",lin);
      for (int col=1; col<=3; col++) {
        char c = tabuleiro[lin-1][col-1];
        out.printf("%2c ", (c==VAZIO)? ' ' : c);
        out.printf("%c", (col<3)? '|' : '\n');
      }
      if (lin<3)
        out.printf("   ---+---+---\n");
    }
    out.println();
  }

  private int contaIgual(int lin, int col, int dlin, int dcol) {
    int result = 0;

    int l = lin+dlin;
    int c = col+dcol;
    if (l >= 0 && l < 3 && c >= 0 && c < 3 && tabuleiro[l][c] == ultimoJogador) {
    	result = 1 + contaIgual(l, c, dlin, dcol);
    }

    return result;
  }

  private char[][] tabuleiro;
  private char ultimoJogador;
  private int ultimaLin, ultimaCol;
  private int numJogadas;
}
