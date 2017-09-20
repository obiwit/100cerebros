import p2utils.LinkedList;

public class BlockArrayInt {
	// Fields/Attributes
	private LinkedList<Integer[]> blocksList;
	private int numberOfBlocks;
	private int blockSize;

	/**
	 * Constructor 
	 * @param blockSize : size of each block
	 * @param numBlocks : number of blocks
	 */
	public BlockArrayInt(int blockSize, int numBlocks) {
		assert blockSize > 0;
		assert numBlocks > 0;

		this.numberOfBlocks = numBlocks;
		this.blockSize 		= blockSize;

		blocksList = new LinkedList<Integer[]>();

		for (int i = 0; i < numBlocks; i++) {
			Integer[] block = new Integer[blockSize];
			blocksList.addLast(block);
		}
	}

	// Setters
	public void incrementNumberOfBlocks() {
		//assert false: "Not yet implemented!";
		blocksList.addLast(new Integer[blockSize]);
		numberOfBlocks++;
	}

	/**
	 * @param elem	: element to assign to the index position
	 * @param index : index of the element to get
	 */
	public void put(int elem, int index) {
		assert validIndex(index);

		// Get block
		int blockIndex = index / blockSize;
		Integer[] block = blocksList.get(blockIndex);

		// Change block
		//int pos = index - this.blockSize * blockIndex;		// it works too
		int pos = index % blockSize;
		block[pos] = elem;

	}

	// Getters
	/**
	 * @param index : index of the element to get
	 * @return element in given index
	 */
	public int get(int index) {
		assert validIndex(index);

		// Get block
		int blockIndex = index / blockSize;
		Integer[] block = blocksList.get(blockIndex);

		// Get block element
		//int pos = index - this.blockSize * blockIndex;		// it works too
		int pos = index % blockSize;
		return block[pos];
	}

	/**
	 * @return number of blocks * size of each block
	 */
	public int size() {
		return this.numberOfBlocks*this.blockSize;
	}

	/**
	 * @return number of blocks
	 */
	public int numberOfBlocks() {
		return this.numberOfBlocks;
	}

	/**
	 * @return size of each block
	 */
	public int blockSize() {
		return this.blockSize;
	}

	/**
	 * @param index
	 * @return {@code true} if index is valid, else {@code false}
	 */
	public boolean validIndex(int index) {
		return index >= 0 && index < size();
	}
}

