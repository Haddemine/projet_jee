import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:inscrire/models/lpublicld.dart';
import 'package:http/http.dart' as http;

class LpublicldProvider with ChangeNotifier{
  LpublicldProvider(){
    this.fetchTasks();
  }
  List<Lpublicld> _lpubliclds =[];
  List<Lpublicld> get lpublicld{
    return [..._lpubliclds];
  }
  fetchTasks()async{
    final url= Uri.parse('http://10.0.2.2:7755/apis/listldpublic?format=json');
    //final url= Uri.parse('https://127.0.0.1:57446/apis/filierlicence?format=json');
    final response=await http.get(url);
    if(response.statusCode==200){
      var data=json.decode(response.body) as List;
      _lpubliclds=data.map<Lpublicld>((json)=>Lpublicld.fromJson(json)).toList();
    }
  }
}