
class Funcionario{

  final int id;
  final String nome;
  final String cargo;
   double? _salario;

  List<Funcionario> funcionarios = [];
  Funcionario(this.id,this.nome,this.cargo,this._salario);
  

    void exibirInformacao(){
            print('Id: $id, Nome: $nome, Cargo: $cargo, Salario: $_salario \n');
            print("---------------------------");
            print("Salario atual R\$ $_salario \n");
        }

     void aumentarSalario(double percentual) {
  
    double salario = (getSalario * (percentual / 100)) + getSalario;  
    print("---------------------------");
    print("Salário atualizado: R\$ $salario \n");
  }

  
    get getSalario => _salario;
       
        
    set setSalario(double? novoSalario){

      novoSalario = _salario;
      
     
    }
  @override
  String toString() {
    return 'Funcionario: id: $id, nome: $nome, cargo: $cargo, salario: $_salario \n';
  }
  }


class Empresa{
  
  final String nome;
  List<Funcionario> funcionarios = [];
  
  Empresa(this.nome);
  
  void adicionarFuncionario(Funcionario funcionario) {
    funcionarios.add(funcionario);
    print("Adicionado o funcionario: ${funcionario.toString()} \n");
  }
  
  
  void removerFuncionario(int id){
    funcionarios.removeWhere((func) => func.id == id);
     print("Removido funcionario com id $id \n");
    
  }
  void listarFuncionarios(){
    
    for(var funcionario in funcionarios){
      print("${funcionario.toString()}\n");
    }
}
}

void main(){

    Empresa p1 = Empresa('Tech Solutions');
    print("nome da empresa $p1");
    print("---------------------------");
    Funcionario f = Funcionario(4,'Ana','Estagiario',100);
  
    p1.adicionarFuncionario(Funcionario(1,'Joao','Gerente',1000));
    
    print("---------------------------");
    f.exibirInformacao();
    f.aumentarSalario(10);
    print("---------------------------");
    print("Informação atualizada");
    print("---------------------------");
    p1.removerFuncionario(4);
    print("---------------------------");
    p1.adicionarFuncionario(f);
    print("---------------------------");
    p1.listarFuncionarios();
}
