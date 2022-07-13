import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:inscrire/models/lpubliclun.dart';
import 'package:http/http.dart' as http;

class LpubliclunProvider with ChangeNotifier{
  LpubliclunProvider(){
    this.fetchTasks();
  }
  List<Lpubliclun> _lpublicluns =[];
  List<Lpubliclun> get lpubliclun{
    return [..._lpublicluns];
  }
  fetchTasks()async{
    final url= Uri.parse('http://10.0.2.2:7755/apis/listlunpublic?format=json');
    //final url= Uri.parse('https://127.0.0.1:57446/apis/filierlicence?format=json');
    final response=await http.get(url);
    if(response.statusCode==200){
      var data=json.decode(response.body) as List;
      _lpublicluns=data.map<Lpubliclun>((json)=>Lpubliclun.fromJson(json)).toList();
    }
  }
}