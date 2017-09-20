// Altere esta classe para implementar um tipo de dados abstrato que funciona
// como um array, com métodos de put e get.
// A implementação fornecida cria um único array, mas queremos substituí-lo
// por uma lista de blocos (arrays de tamanho blocksize), que poderá crescer
// juntando progressivamente mais blocos à lista.

import static java.lang.System.*;
public class BlockArrayInt
{
	private int[] a;
	private int numberOfBlocks=1;
	
	public int size(){
		return a.length;
	}

	public int numberOfBlocks(){
		return numberOfBlocks;
	}

	public int blockSize(){
		return a.length;
	}
	
	public boolean validIndex(int index){
		return index >= 0 && index < size();
	}
	
	public BlockArrayInt(int blockSize,int numBlocks){
		assert blockSize > 0;
		assert numBlocks > 0;

		a = new int[blockSize*numBlocks];
	}

	public int get(int index){
		assert validIndex(index);

		return a[index];
	}

	public void put(int elem,int index){
		assert validIndex(index);

		a[index] = elem;
	}

	public void incrementNumberOfBlocks(){
		assert true: "Not yet implemented!";
		BlockArrayInt temp = this;
		this.a = new int[a.length*2];
		for (int i = 0; i < temp.size(); i++){
			out.print(temp.get(i));
			this.a[i] = temp.get(i);
		}
		numberOfBlocks++;
		
		
	}


}

