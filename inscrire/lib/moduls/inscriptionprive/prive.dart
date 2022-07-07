import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:inscrire/moduls/valide/valid.dart';
import 'package:inscrire/shared/components/components.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
class PriveL1 extends StatefulWidget {
  const PriveL1({Key? key}) : super(key: key);

  @override
  _PriveL1State createState() => _PriveL1State();
}

class _PriveL1State extends State<PriveL1> {
  final items = ['L\'informatique de Gestion','Developpement Informatique','Reseaux & telecominication ','Estatistique ','finance comptabilite'];
  String? value;
  final item = ['Normal','complementaire'];
  String? values;
  int?_value = 1;
  int?_value1 = 1;
  int?_value2 = 1;
  int?_value3 = 1;
  var nameController = TextEditingController();
  var nniController = TextEditingController();
  var lieuController = TextEditingController();
  var telController = TextEditingController();
  var dateController = TextEditingController();
  var emailController = TextEditingController();
  var bacController = TextEditingController();
  var moyenController =TextEditingController();
  var dateregisterController =TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Formulaire dinscrire prive l1',
          style:TextStyle(color: Colors.white) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Text("prive l1",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultTextField(
                    controller: nameController,
                    type: TextInputType.name,
                    text: 'Name',
                    prefix: Icons.person,
                  ),
                  defaultTextField(
                    controller: nniController,
                    type: TextInputType.number,
                    text: 'NNI',
                    prefix: Icons.credit_card,
                  ),
                  defaultTextField(
                    controller: lieuController,
                    type: TextInputType.name,
                    text: 'Lieu de Naissance ',
                    prefix: Icons.home_outlined,
                  ),
                  defaultTextField(
                    controller: telController,
                    type: TextInputType.number,
                    text: 'Tel',
                    prefix: Icons.phone,
                  ),

                  defaultTextField(
                      controller: dateController,
                      type: TextInputType.datetime,
                      text: 'Date Naissance',
                      prefix: Icons.calendar_today,

                      onTap: (){
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse('2022-12-31'),
                        ).then((value){
                          dateController.text = DateFormat.yMMMd().format(value!);
                        }).catchError((error){

                        });
                      }
                  ),
                  defaultTextField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    text: 'Email Adresse',
                    prefix: Icons.email_outlined,
                  ),
                  defaultTextField(
                    controller: bacController,
                    type: TextInputType.number,
                    text: 'Numero Bac',
                    prefix: Icons.insert_comment,
                  ),
                  defaultTextField(
                    controller: moyenController,
                    type: TextInputType.number,
                    text: 'Moyenne general',
                    prefix: Icons.post_add,
                  ),
                  defaultTextField(
                      controller: dateregisterController,
                      type: TextInputType.datetime,
                      text: 'Date',
                      prefix: Icons.calendar_today,
                      onTap: (){
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse('2022-12-31'),
                        ).then((value){
                          dateregisterController.text = DateFormat.yMMMd().format(value!);
                        }).catchError((error){

                        });
                      }
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                      ),
                      // ButtonStyle( backgroundColor: Color.fromARGB(180, 182, 252, 249)),
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles();
                        if(result == null) return;
                        ///open single file
                        final file = result.files.first;
                        openFile(file);
                      },
                      child: Text('choisir une photo'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                      ),
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles();
                        if(result == null) return;
                        ///open single file
                        final file = result.files.first;
                        openFile(file);
                      },
                      child: Text('choisir un fichier cart d\'idenditer'),
                    ),

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                      ),
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles();
                        if(result == null) return;
                        ///open single file
                        final file = result.files.first;
                        openFile(file);
                      },
                      child: Text('choisir un fichier releve de note'),
                    ),

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: value,
                        isExpanded:true,
                        iconSize: 36,
                        items:items.map(buildMenuItem).toList(),
                        onChanged:(value) => setState(() =>this.value = value),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: values,
                        isExpanded:true,
                        iconSize: 36,
                        items:item.map(buildMenuItem).toList(),
                        onChanged:(value) => setState(() =>this.values = value),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text('Sexe:',
                          style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: _value,
                                activeColor: Colors.cyan,
                                onChanged: (value){
                                  setState(() {
                                    _value = value as int?;
                                  });
                                }
                            ),
                            Text('H',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Radio(
                                value: 2,
                                groupValue: _value,
                                activeColor: Colors.cyan,
                                onChanged: (value){
                                  setState(() {
                                    _value = value as int?;
                                  });
                                }
                            ),
                            Text('F',
                              style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text('Serie:',
                          style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: _value1,
                                activeColor: Colors.cyan,
                                onChanged: (value){
                                  setState(() {
                                    _value1 = value as int?;
                                  });
                                }
                            ),
                            Text('C',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Radio(
                                value: 2,
                                groupValue: _value1,
                                activeColor: Colors.cyan,
                                onChanged: (value){
                                  setState(() {
                                    _value1 = value as int?;
                                  });
                                }
                            ),
                            Text('D',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Pays:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: _value2,
                                activeColor: Colors.cyan,
                                onChanged: (value){
                                  setState(() {
                                    _value2 = value as int?;
                                  });
                                }
                            ),
                            Text('National',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Radio(
                                value: 2,
                                groupValue: _value2,
                                activeColor: Colors.cyan,
                                onChanged: (value){
                                  setState(() {
                                    _value2 = value as int?;
                                  });
                                }
                            ),
                            Text('Etranger',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text('Payement:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Radio(
                          value: 1,
                          groupValue: _value3,
                          activeColor: Colors.cyan,
                          onChanged: (value){
                            setState(() {
                              _value3 = value as int?;
                            });
                          }
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Bankily',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Radio(
                          value: 2,
                          groupValue: _value3,
                          activeColor: Colors.cyan,
                          onChanged: (value){
                            setState(() {
                              _value3 = value as int?;
                            });
                          }
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Masrivi',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultButton(function: ()
                      {
                        if(formkey.currentState!.validate())
                        {

                        }
                      }, text: 'confirm',
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MaterialButton(
                          onPressed: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Valid(),
                            ),
                            );
                          },
                          child: Text(
                            "Annuler",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }

  void openFile(PlatformFile file)
  {
    OpenFile.open(file.path!);
  }
  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      );
}
