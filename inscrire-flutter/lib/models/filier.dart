class Filier{
  int id;
  final String nom;

  Filier({required this.id, required this.nom});
  factory Filier.fromJson(Map<String,dynamic>json){
    return Filier(id: json['id'], nom: json['nom']);
  }
  dynamic toJson()=>{
    'id':DateTime.now(),
    'nom':nom
  };
}