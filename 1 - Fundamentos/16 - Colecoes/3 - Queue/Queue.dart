import 'dart:collection';

void main() {
  queue();
}

/*
  * Queue
    - Colecao ordenada entre chaves{}, sem index, que manipula o inicio e o fim da lista! 
 */

queue() {
  print('Colecoes - Queue');

  Queue<int> queue = Queue();
  print('Implementacao: ${queue.runtimeType}'); //ListQueue<int>
  queue.addAll([20, 30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  print(queue);
  queue.removeLast();
  queue.forEach((e) => print(e));
}
