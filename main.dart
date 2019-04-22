import 'cliente.dart';
import 'caixaEletronico.dart';
void main(){
  var cliente = new Cliente();
  var operacoes = new Operacoes();

  cliente.titular = 'Eliezer Castro';
  cliente.conta = 11209;
  cliente.numConta =  '2553-8';

  operacoes.sacar();
}
