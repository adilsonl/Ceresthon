class User {
    String nome;
    String data;
    String cpf;
    String tel;
    String id;
    String senha;

    User({
        this.nome,
        this.data,
        this.cpf,
        this.tel,
        this.id,
        this.senha,
    });

     User.fromJson(Map<String, dynamic> json){
        nome= json["nome"];
        data= json["data"];
        cpf= json["cpf"];
        tel= json["tel"];
        id=json["id"];
        senha= json["senha"];
     }
       
    

    Map<String, dynamic> toJson() => {
        "nome": nome,
        "data": data,
        "cpf": cpf,
        "tel": tel,
        "id": id,
        "senha": senha,
    };
}