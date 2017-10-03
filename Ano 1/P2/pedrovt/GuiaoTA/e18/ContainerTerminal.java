package e18;

//NMEC: 
//NOME: 
import static java.lang.System.*;

public class ContainerTerminal {
	ContainerStack[] sa;    // the stacks of containers
	int num;  // number of parallel stacks of containers
	int max;  // maximum height of each stack of containers
	int numcontainers;  // number of containers on the terminal

	public ContainerTerminal(int num, int max) {
		sa = new ContainerStack[num];
		for (int k = 0; k < num; k++) {
			sa[k] = new ContainerStack(max);
		}
		this.num = num;
		this.max = max;
		numcontainers = 0;
	}

	/**
	 * Is the terminal full?
	 * A full terminal must still have enough free space to enable
	 * retrieving any given container.
	 */
	public boolean isFull() {
		return numcontainers >= num*max - max;
	}

	/**
	 * Checks if a container of a certain type exists
	 */
	public boolean containerTypeExists(String type) {
		return findStackContaining(type) >= 0;
	}

	/**
	 * Find first stack with free space, other than the stackToAvoid.
	 * @return the index of the found stack
	 */
	private int findOtherStack(int stackToAvoid) {
		assert !isFull();
		int k = 0;
		while (k==stackToAvoid || sa[k].isFull()) {
			k++;
		}
		return k;
	}

	/**
	 * Find a stack that includes a container with a given type of cargo
	 * @return the index of the found stack, or -1 if no such cargo exists.
	 */
	private int findStackContaining(String type) {
		int k = 0;
		while (k < num) {
			if (sa[k].search(type) >= 0) return k;
			k++;
		}
		return -1;
	}

	public void print() {
		out.printf("Terminal numcontainers=%d isFull=%s\n",
				numcontainers, isFull());
		for (int k = 0; k < num; k++) {
			out.printf("%2d: %s\n", k, sa[k].toString());
		}
	}

	// Log: historical log of retrieved containers: it's a linked list
	HistoryNode log;

	private void logContainerInfo(Container c) {
		HistoryNode n = new HistoryNode();
		n.type   = c.type;
		n.numops = c.numops();
		n.next   = log;
		log = n;
	}
	
	public double averageOpsPerContainer() {
		// go through the linkedList log
		double ops   = (double) averageOpsPerContainer(log);
		double count = (double) countNodes(log);
		return ops / count;
	}

	private int averageOpsPerContainer(HistoryNode node) {
		if (node == null) {		// last element of the list
			return 0;
		}
		return node.numops + averageOpsPerContainer(node.next);
	}
	
	// Count could be passed by reference but in Java is passed by value
	// I could also create a registry and return it in averageOpsPerContainer
	private int countNodes(HistoryNode node) {
		if (node == null) {		// last element of the list
			return 0;
		}
		return 1 + countNodes(node.next);
	}

	//...
	public void store(Container container) {
		assert !isFull() : "Terminal is full";

		// encontrar a primeira pilha que não esteja cheia
		int index = findOtherStack(-1);
		// empilhar
		sa[index].push(container);
		numcontainers++;
		
		assert !sa[index].isEmpty() : "Stack can't be empty";
		assert numcontainers > 0 : "Number of numcontainers can't be 0";
	}

	public Container retrieve(String type) {
		int index = findStackContaining(type);

		if (index < 0 ) return null; // not found

		Container local = sa[index].top();

		while (!local.contains(type)) {
			local = sa[index].top();
			sa[index].pop();
			if (local.contains(type)) break;
			int j = findOtherStack(index);
			sa[j].push(local);

			
		}

		logContainerInfo(local);
		numcontainers--;
		return local;
	}
}

