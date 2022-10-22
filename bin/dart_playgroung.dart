void main(List<String> arguments) {
  // // Atribuição implicita
  // var nomeImplict = 'Flavio';
  // var sobrenome = 'Marteletto';

  // String nome = 'Flavio';
  // int idade = 30;

  // var retorno = retornaNome(nomeImplict, lastName: sobrenome);

  // print(retorno);

  // //// Listas
  // var lista = <String>['Flavio 1', 'Flavio 2', 'Flavio 3'];

  // /// ADD Lista
  // lista.add('Flavio 4');

  // /// ADD Lista no respectivo index
  // lista.insert(0, 'Flavio 5');

  // print(lista);

  // lista.forEach((element) {
  //   print(element);
  // });

  // /// //// Listas com set, removendo valores dupicados
  // var listaset = <String>{'Flavio 1', 'Flavio 1', 'Flavio 2', 'Flavio 3'};

  // /// hack para remover elementos duplicados de uma lista
  // listaset.toSet().toList();

  // List<int> teste = escalaFibonacci(8, []);

  List<int> escalaFibonacci(int tamanho, List<int> retorno) {
    if (tamanho == 0) {
      return retorno;
    } else {
      if (retorno.isEmpty) {
        retorno.add(0);
        return escalaFibonacci(tamanho - 1, retorno);
      } else if (retorno.length == 1) {
        retorno.add(1);
        return escalaFibonacci(tamanho - 1, retorno);
      } else {
        retorno.add(retorno[retorno.length - 1] + retorno[retorno.length - 2]);
        return escalaFibonacci(tamanho - 1, retorno);
      }
    }
  }

  print('Execicio Escala Fibonacci');
  print(escalaFibonacci(100, []));
}

// Segundo parametro opcional[]
String retornaNome(String name, {String lastName = ''}) {
  return '$name $lastName';
}
