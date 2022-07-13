import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/filier.dart';
import 'package:http/http.dart' as http;

class FilierProvider with ChangeNotifier{
  FilierProvider(){
    this.fetchTasks();
  }
  List<Filier> _filiers =[];
  List<Filier> get filiers{
    return [..._filiers];
  }
  void addFiliere(Filier filier) async{
  final response=await http.post(
  Uri.parse('http://127.0.0.1:6893/apis/filierlicence?format=json'),
  headers: {"Content - Type":"application/json"}, 
  body: json.encode(filier)
  );
  if(response.statusCode==201){
    filier.id=json.decode(response.body)['id'];
    _filiers.add(filier);
    notifyListeners();
  }
 }
fetchTasks()async{
  final url= Uri.parse('http://10.0.2.2:5000/apis/filierlicence?format=json');
  //final url= Uri.parse('https://127.0.0.1:57446/apis/filierlicence?format=json');
    final response=await http.get(url);
    if(response.statusCode==200){
      var data=json.decode(response.body) as List;
      _filiers=data.map<Filier>((json)=>Filier.fromJson(json)).toList();
      notifyListeners();
    }
}
}