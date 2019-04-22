import 'cliente.dart';
<<<<<<< HEAD
import 'banco.dart';
void main(){
  var cliente = new Cliente();
  var conta = new Conta();
=======
import 'caixaEletronico.dart';
void main(){
  var cliente = new Cliente();
  var operacoes = new Operacoes();
>>>>>>> 1f43fea6ed9c7cb3ba7d13c41045d0f952d91a08

  cliente.titular = 'Eliezer Castro';
  cliente.conta = 11209;
  cliente.numConta =  '2553-8';

<<<<<<< HEAD
  conta.sacar();
=======
  operacoes.sacar();
>>>>>>> 1f43fea6ed9c7cb3ba7d13c41045d0f952d91a08
}
