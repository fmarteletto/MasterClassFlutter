import 'models/Person.dart';

void main() {
  var pessoa = Person.base('Flavio', 'MArteletto', 80, 1.67);

  print(pessoa.getFullName());
  print(pessoa.imc());
}
