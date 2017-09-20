// Altere esta classe para implementar um tipo de dados abstrato que funciona
// como um array, com métodos de put e get.
// A implementação fornecida cria um único array, mas queremos substituí-lo
// por uma lista de blocos (arrays de tamanho blocksize), que poderá crescer
// juntando progressivamente mais blocos à lista.
import p2utils.*;

public class BlockArrayInt
{
  public BlockArrayInt(int blockSize,int numBlocks)
  {
    assert blockSize > 0;
    assert numBlocks > 0;

    a = new LinkedList<Integer[]>();
    a.addFirst(new Integer[blockSize]);
	blocks = 1;
    
    this.blockSize = blockSize;
    
    maxBlocks = numBlocks;
  }

  public int get(int index)
  {
    assert validIndex(index);
    
    return a.get(index/blockSize)[index % blockSize];
  }

  public void put(int elem,int index)
  {
    assert validIndex(index);
    if (index == blockSize * blocks) incrementNumberOfBlocks();
	// ir ao ultimo array, espetar la no fim o novo 
    a.get(index/blockSize)[index % blockSize] = elem;
    size++;
    
  }

  public void incrementNumberOfBlocks()
  {
    a.addLast(new Integer[blockSize]);
    blocks++;
  }

  public int size()
  {
    return size;
  }

  public int numberOfBlocks()
  {
    return blocks;
  }

  public int blockSize()
  {
    return blockSize;
  }

  public boolean validIndex(int index)
  {
    return index >= 0 && index < size();
  }

  private LinkedList<Integer[]> a;
  private int size = 0, blockSize = 0, maxBlocks = 0, blocks = 0;
}

