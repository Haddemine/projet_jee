import 'package:flutter/cupertino.dart';

class Lpubliclt{
  int id;
  final String nom;
  final Image photoEtudiant;
  final int nni;
  final String sexe;
  final DateTime dateNaissance;
  final String lieuNaissance;
  final int telephone;
  final String email;
  final Image carteIdentite;
  final int numBac;
  final String serie;
  final Image releveNote;
  final String session;
  final double moyenGeneral;
  final String pays;
  final DateTime AnObtantionBac;
  final String niveau;
  final String filiere;

  Lpubliclt({required this.id, required this.nom, required this.photoEtudiant,
    required this.nni, required this.sexe,required this.dateNaissance,
    required this.lieuNaissance, required this.telephone, required this.email,
    required this.carteIdentite, required this.numBac, required this.AnObtantionBac,
    required this.session, required this.serie, required this.releveNote,
    required this.niveau, required this.pays, required this.moyenGeneral,
    required this.filiere});
  factory Lpubliclt.fromJson(Map<String,dynamic>json){
    return Lpubliclt(id: json['id'], nom: json['nom'], photoEtudiant: json['photoEtudiant'],
        nni: json['nni'], sexe: json['sexe'], dateNaissance: json['dateNaissance'],
        lieuNaissance: json['lieuNaissance'], telephone: json['telephone'],
        email: json['email'], carteIdentite: json['carteIdentite'], numBac: json['numBac'],
        AnObtantionBac: json['AnObtantionBac'], session: json['session'], serie: json['serie'],
        releveNote: json['releveNote'], niveau: json['niveau'], pays: json['pays'],
        moyenGeneral: json['moyenGeneral'], filiere: json['filiere']);
  }
}