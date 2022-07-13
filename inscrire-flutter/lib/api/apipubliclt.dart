import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/lpubliclt.dart';
import 'package:http/http.dart' as http;

class LpublicltProvider with ChangeNotifier{
  LpublicltProvider(){
    this.fetchTasks();
  }
  List<Lpubliclt> _lpubliclts =[];
  List<Lpubliclt> get lpubliclts{
    return [..._lpubliclts];
  }
  void addLpubliclt(Lpubliclt lpubliclt) async{
    final response=await http.post(
        Uri.parse('http://127.0.0.1:6893/apis/listltpublic?format=json'),
        headers: {"Content - Type":"application/json"},
        body: json.encode(lpubliclt)
    );
    if(response.statusCode==201){
      lpubliclt.id=json.decode(response.body)['id'];
      _lpubliclts.add(lpubliclt);
      notifyListeners();
    }
  }
  fetchTasks()async{
    final url= Uri.parse('http://127.0.0.1:6893/apis/filierlicence?format=json');
    //final url= Uri.parse('https://127.0.0.1:57446/apis/filierlicence?format=json');
    final response=await http.get(url);
    if(response.statusCode==200){
      var data=json.decode(response.body) as List;
      _lpubliclts=data.map<Lpubliclt>((json)=>Lpubliclt.fromJson(json)).toList();
      notifyListeners();
    }
  }
}