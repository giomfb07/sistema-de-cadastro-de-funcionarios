
class Funcionario{

  final int id;
  final String nome;
  final String cargo;
  final double? _salario;

  List<Funcionario> funcionarios = [];
  Funcionario(this.id,this.nome,this.cargo,this._salario);

    void exibirInformacao(){
            print('Id: $id, Nome: $nome, Cargo: $cargo, Salario: $_salario');
        }

    void aumentarSalario(double percentual){
      setSalario = (getSalario * (percentual/100))+getSalario;
    }

  
    get getSalario => _salario;
        
        
    set setSalario(double? novaIdade){

      novaIdade = _salario;
    }
  
  void adicionarFuncionario(Funcionario funcionario){
    funcionarios.add(funcionario);
    print("Adicionado o funcionario $funcionario");
  }
  
  void removerFuncionario(int id){
    funcionarios.remove(id);
     print("Removido funcionario com id $id");
    
  }
  void listarFuncionarios(){
    
    for(var funcionario in funcionarios){
      print(funcionario);
    }
    
    
    
  }
}
  

void main(){

    Funcionario p1 = Funcionario(40,'10','10',10);
    p1.exibirInformacao();
    print(p1.toString());
  

     p1.removerFuncionario(1);
     p1.adicionarFuncionario(p1);
}