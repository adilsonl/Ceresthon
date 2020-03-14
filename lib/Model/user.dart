class User {
    String nome;
    String data;
    String cpf;
    String tel;
    String id;
    String senha;
    String email;

    User({
        this.nome,
        this.data,
        this.cpf,
        this.tel,
        this.id,
        this.senha,
        this.email
    });

     User.fromJson(Map<String, dynamic> json){
        nome= json["nome"];
        data= json["data"];
        cpf= json["cpf"];
        tel= json["tel"];
        id=json["id"];
        senha= json["senha"];
        email = json["email"];
     }
       
    

    Map<String, dynamic> toJson() => {
        "nome": nome,
        "data": data,
        "cpf": cpf,
        "tel": tel,
        "id": id,
        "senha": senha,
        "email": email
    };
}