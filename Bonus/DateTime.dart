/*
  * Conceito
    - DateTime classe com construtores para definir segundos, horas, dias e anos
    - Duration classe usada para definir um determinado tempo
*/

void main() {
  print('Bonus - DateTime');

  print('Compilando as ${tempoAgora()}');
  var p1 = Pessoa('Marco Willy', 11, 6, 1999);
}

String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.microsecond}';
  return hora;
}

class Pessoa {
  String nome;
  late DateTime _data, _nascimento, _agora = DateTime.now();

  Pessoa(this.nome, int diaNascimento, int mesNascimento, int anoNascimento,
      {int horas = 0, int minutos = 0}) {
    this._nascimento = DateTime.utc(
        anoNascimento, mesNascimento, diaNascimento, horas, minutos);
    print(
        '$nome nascido em $diaNascimento/$mesNascimento/$anoNascimento ${diaSemana(_nascimento.weekday)} as $horas:$minutos ano ${bissexto(anoNascimento)}');
    fecundacao();
    tempo();
  }

  fecundacao() {
    int gestacaoMedia = 268;
    _data = _nascimento.subtract(Duration(days: gestacaoMedia));
    print(
        'Data estimada da fecundacao: ${_data.day}/${_data.month}/${_data.year} ${diaSemana(_nascimento.weekday)}');
  }

  tempo() {
    print('''Tem ${idade().toStringAsFixed(0)} anos e esta vivo a:
    ${_agora.difference(_nascimento).inDays} dias...
    ${_agora.difference(_nascimento).inHours} horas...
    ${_agora.difference(_nascimento).inMinutes} minutos...
    ${_agora.difference(_nascimento).inSeconds} segundos...
    ''');
  }

  String bissexto(int ano) => (ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0)
      ? 'é bissexto'
      : 'não é bissexto';

  double idade() => _agora.difference(_nascimento).inDays / 360;

  String diaSemana(int dia) {
    switch (dia) {
      case 1:
        return 'Segunda-feira';
      case 2:
        return 'Terça-feira';
      case 3:
        return 'Quarta-feira';
      case 4:
        return 'Quinta-feira';
      case 5:
        return 'Sexta-feira';
      case 6:
        return 'Sabado';
      case 7:
        return 'Domingo';
      default:
        return '';
    }
  }
}
