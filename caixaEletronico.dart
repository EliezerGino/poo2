import 'cliente.dart';
import 'dart:io';

class Operacoes{
  var cliente = new Cliente();

  void deposito(){
    print('Digite o valor do depósito');
    double valor = double.parse(stdin.readLineSync());
    cliente.saldo += valor;
  }
  void sacar(){
    int n100 = 0, n50 = 0, n20 = 0, n10 = 0, n5 = 0, n2 = 0;

    print('Digite o valor para saque');
    double valor = double.parse(stdin.readLineSync());
    if(cliente.saldo < valor){
      print('Saldo não suficiente! A operação será abortada');
    }
    else{
      while(valor>0){
        if(valor >= 100){
          n100++;
          valor -=100;
        }
        else if(valor>=50){
          n50++;
          valor -=50;
        }
        else if(valor>=20){
          n20++;
          valor -=20;
        }
        else if(valor>=10){
          n10++;
          valor -=10;
        }
        else if(valor>=5){
          n5++;
          valor -=5;
        }
        else if(valor>=2){
          n2++;
          valor -=2;
        }
      }
      print('$n100 nota(s) no valor de R\$ 100,00');
      print('$n50 nota(s) no  valor de R\$ 50,00');
      print('$n20 nota(s) no valor de R\$ 20,00');
      print('$n10 nota(s) no valor de R\$ 10,00');
      print('$n5 nota(s) no valor de R\$ 5,00');
      print('$n2 nota(s) no valor de R\$ 2,00');
      print('Digite "1" para sacar e "2" para cancelar');
      int opcao = int.parse(stdin.readLineSync());
      switch(opcao){
        case 1:{
          cliente.saldo -= valor;
          print('Saque realizado com sucesso! Seu saldo é de ${cliente.saldo}');
          break;
        }
        case 2:{
          print('Operação abortada');
          break;
        }
        default: {
          print('Opção inexistente');
          print('A operação será abortada');
          break;
        }
      }
    }
  }

  void extrato(){
    print(cliente.titular);
    print(cliente.conta);
    print(cliente.numConta);
    print(cliente.saldo);

  }
}