int calculate() {
  return 6 * 7;
}

List<String> converterEmLista(String nome) {
  return nome.split(' ').toList();
}

String recuperarNome(List<String> nomes) {
  return nomes[0];
}

double restoDivisao(double a, double b) {
  return a.remainder(b);
}

String? maioridade(int idade) {
  try {
    if (idade < 0) throw ArgumentError('A idade nao pode ser negativa!');
    return idade < 14
        ? 'Crianca'
        : idade < 18
            ? 'Adolescente'
            : 'Adulto';
  } catch (e) {
    print('Excecao: $e');
    return null;
  }
}
