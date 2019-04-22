import 'cliente.dart';
import 'banco.dart';
void main(){
  var cliente = new Cliente();
  var conta = new Conta();

  cliente.titular = 'Eliezer Castro';
  cliente.conta = 11209;
  cliente.numConta =  '2553-8';

  conta.sacar();
}
