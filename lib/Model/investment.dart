class Investment {
    String identificacao;
    String valor;
    String nomeInvest;

    Investment({
        this.identificacao,
        this.valor,
        this.nomeInvest,
    });

    Investment.fromJson(Map<String, dynamic> json){
        identificacao= json["identificacao"],
        valor= json["valor"],
        nomeInvest= json["nomeInvest"],
    };

    Map<String, dynamic> toJson() => {
        "identificacao": identificacao,
        "valor": valor,
        "nomeInvest": nomeInvest,
    };
}