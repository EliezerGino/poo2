import 'cliente.dart';
import 'banco.dart';
import 'caixaEletronico.dart';
void main(){
  var cliente = new Cliente();
  var conta = new Conta();

  cliente.nome = 'Eliezer Castro';
  cliente.idade = 47;
  cliente.cpf =  '25567753-88';
  conta.titular = cliente;
  conta.extrato();

  //conta.sacar();
}
