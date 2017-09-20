package e17;

public class ServiceQueue {

  public String beingServed;

  public ServiceQueue(String serviceName, int maxSize) {
    assert maxSize >= 0;
    array = new String[maxSize];
    size = head = tail = 0;

    beingServed = null;
    this.serviceName = serviceName;
  }

  public void in(String e) {
    assert !isFull();
    array[tail] = e;
    tail = nextPosition(tail);
    size++;
  }

  public void out() {
    assert !isEmpty();
    head = nextPosition(head);
    size--;
  }

  public String peek() {
    assert !isEmpty();
    return array[head];
  }

  public int size() {
    return size;
  }

  public boolean isFull() {
    return size == array.length;
  }

  public void clear() {
    head = tail = size = 0;
  }

  public boolean isEmpty() {
    return size == 0;
  }

  private int nextPosition(int p) {
    return (p + 1) % array.length;
  }

  // retorna vector com os clientes na fila
  public String [] clientsInQueue() {
    String [] a = new String[size];
    int i = head;
    for(int j=0; j<size; j++) {
      a[j] = array[i];
      i = nextPosition(i);
    }
    assert i==tail;
    return a;
  }

  // verifica se a fila tem algum cliente pendente,
  // não considerando os clientes dados no parâmetro
  public boolean clientPendingExcept(String [] busyClients) {
    for(int i=head; i!=tail; i=nextPosition(i)) {
      boolean b = true;
      for(int j=0; j<busyClients.length; j++)
        if (busyClients[j].equals(array[i])) b=false;
      if (b) return true;
    }
    return false;
  }

  public String serviceName() {
    return serviceName;
  }


  private String[] array;
  private int size;
  private int head, tail;

  private String serviceName;

}

