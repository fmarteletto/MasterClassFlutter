// O CPF tem dois dígitos verificadores que são os dois últimos números do CPF.
// - Cálculo do primeiro dígito verificar:

// 1. O primeiro passo é calcular o primeiro dígito verificador, e para isso, separamos
// os primeiros 9 dígitos do CPF (111.444.777) e multiplicamos cada um dos números,
// da direita para a esquerda por números crescentes a partir do número 2.

// 2. Multiplique cada digito do CPF pelo respectivo número e somamos cada um dos resultados.

// 3. Divida o valor obtido por 11. Trabalharemos com o RESTO e não com o VALOR da divisão.

// 4. Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
//  Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).

// O Resultado deve ser igual ao primeiro dígito verificador.

// - Cálculo do segundo dígito verificar:

// 1. Pegaremos os primeiros 10 dígitos do CPF (111.444.777-1) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

// 2. Com o resultado em mãos, siga os passos 2, 3 e 4 do cálculo do primeiro dígito.

// O Resultado deve ser igual ao segundo dígito verificador.

void main(List<String> arguments) {
  String cpf = '35235719875';
  if (validaCpf(cpf)) {
    var primeiroDigito = validaPrimeiroDigito(cpf);
    var seguntoDigito = validaSegundoDigito(cpf);
    bool valido = cpfValido(cpf, primeiroDigito, seguntoDigito);
    print('valido ' + (valido == true ? 'Sim ' : 'Não'));
  } else {
    print('Invalido');
  }
}

bool validaCpf(String cpf) {
  var interalCpf = cpf.replaceAll('.', '').replaceAll('-', '');
  if (interalCpf.length != 11) return false;
  return true;
}

int validaPrimeiroDigito(String cpf) {
  var interalCpf = cpf.replaceAll('.', '').replaceAll('-', '');
  var novePrimeirosDigitos = interalCpf.substring(0, 9);
  List<int> numerosCpf = [];

  // Separa os 9 primeiros digitos e adiciona a uma lista e inteiros
  for (int i = 0; i < 9; i++) {
    numerosCpf.add(int.parse(novePrimeirosDigitos.substring(i, i + 1)));
  }

  int resultado = 0;
  // percorre a lista do ultimo indice para o Primeiro fazendo a multipicação e atribui o resultado
  for (int j = 8; j >= 0; j--) {
    int multiplicador = 10 - j;
    resultado += numerosCpf[j] * multiplicador;
  }

  double valor = resultado % 11;

  if (valor < 2.00) {
    return 0;
  } else {
    var result = 11 - valor;
    return result.toInt();
  }
}

int validaSegundoDigito(String cpf) {
  var interalCpf = cpf.replaceAll('.', '').replaceAll('-', '');
  var dezPrimeirosDigitos = interalCpf.substring(0, 10);
  List<int> numerosCpf = [];

  // Separa os 9 primeiros digitos e adiciona a uma lista e inteiros
  for (int i = 0; i < 10; i++) {
    numerosCpf.add(int.parse(dezPrimeirosDigitos.substring(i, i + 1)));
  }

  int resultado = 0;
  // percorre a lista do ultimo indice para o Primeiro fazendo a multipicação e atribui o resultado
  for (int j = 9; j >= 0; j--) {
    int multiplicador = 11 - j;
    resultado += numerosCpf[j] * multiplicador;
  }

  double valor = resultado % 11;

  if (valor < 2.00) {
    return 0;
  } else {
    var result = 11 - valor;
    return result.toInt();
  }
}

bool cpfValido(String cpf, int primeiroDigito, int segundoDigito) {
  var interalCpf = cpf.replaceAll('.', '').replaceAll('-', '').substring(9, 11);
  var digito = primeiroDigito.toString() + segundoDigito.toString();
  return interalCpf == digito ? true : false;
}
