class Empresa{
  
  List<String> lista = <String>[];
  String? nome;
  
  void adicionarFuncionario(){
    Funcionario f = Funcionario();
    print('Nome do funcionario: ');
    String? name = stdin.readLineSync()?.ToUpperCase ?? "";
    f.setNome = name;
    lista.add (name);
    print('Usuario adicionado com id ${lista.length - 1}');
    print('Cargo do funcionario: ');
    String? cargo = stdin.readLineSync()?.ToUpperCase ?? "";
    f.setCargo = cargo;
    print('Adicione salario:');
    String? salario = stdin.readLineSync()?.ToUpperCase ?? "";
    double valsalario = double.parse(salario);
    f.setSalario = valsalario;
    print('Salario adicionado');
  }
  void exibirFuncionariosGerais(){
    print('Id: - Nome:');
    for(int i = 0; i< lista.length; i++){
      print('$i - ${lista[i]}');
    }
  }
  
  void verificarIdDoUsuario(){
    print('Digite o nome do usuario que voce deseja procurar:');
    String? nameFuncio = stdin.readLineSync()?.ToUpperCase ?? "";
   for(int i = 0; i< lista.length - 1; i++){
     lista[i];
     if(lista[i] == nameFuncio){
       print('O id do funcionario $nameFuncio [e: $i]');
     }
   }
  }
  
  
  void exibirFuncionarioExpecifico(){
    print('Digite o nome do usuario que voce deseja procurar:');
    String? position = stdin.readLineSync()?.ToUpperCase ?? "";
    int valPo = int.parse(position);
    print('O usuario correspondente ao id $valPo ${lista[valPo]}');
  }
  
  void removerFuncionario(){
    print('Qual id do funcionario que deseja remover?');
    String? position = stdin.readLineSync()?.ToUpperCase ?? "";
    int valPo = int.parse(position);
    String valorLista = lista[valPo];
    print('O funcionario ${lista[valPo]} foi removido');
    lista.remove(valorLista);
  }
}

class Funcionario{

  final int _id;
  final String _nome;
  final String _cargo;
  final double? _salario;

    void aumentarSalario(double percentual){
      setSalario = (getSalario * (percentual/100))+getSalario;
    }

    get getSalario => _salario;
    get getId => _id;
    get getNome => _nome;
    get getCargo => _cargo;
          
    set setSalario(double? novoSalario){

      novoSalario = _salario;
    }
    set setNome(String? novoNome){

      novoNome = _nome;
    }
    set setCargo(String? novoCargo){

      novoCargo = _cargo;
    }
   void exibirInformacao(){
   print('Id: $getId, Nome: $getNome, Cargo: $getCargo, Salario: $getSalario');
        }
}

void main(List<String> arguments){
    print('Seja bem vinda empresa');
    bool sair = false;
    Empresa emp = Empresa();
    try{
      while(!sair){
        print('O que deseja fazer \n - Adicionar funcionario \n - Exibir todos os funcionarios \n - Exibir funcionario expecifico \n - Remover funcionario \n - Verificar id \n - Sair');
        String? escolha = stdin.readLineSync()?.ToUpperCase ?? "";
       switch (escolha){
           case"1":
           emp.adicionarFuncionario();
         case "2":
           emp.exibirFuncionariosGerais();
         case "3":
            emp.exibirFuncionarioExpecifico();
         case "4":
           emp.removerFuncionario();
         case "5":
           emp.verificarIdDoUsuario();
         case "6":
           sair = true;
           break;
       } 
      }
      
    }catch(e){
      rethrow;
    }
  
}