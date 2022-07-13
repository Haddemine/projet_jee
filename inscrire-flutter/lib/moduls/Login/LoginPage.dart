import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inscrire/api/api.dart';
import 'package:inscrire/moduls/Hom/homM.dart';
import 'package:inscrire/moduls/home/home.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filiereP=Provider.of<FilierProvider>(context);
    return Scaffold(
      body: ListView.builder(
            itemCount: filiereP.filiers.length ,
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                title:Text(filiereP.filiers[index].nom),
              );
            }),
      // body: Container(
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(begin:Alignment.topCenter,colors: [
      //       Colors.cyan.shade500,
      //       Colors.cyan.shade300,
      //       Colors.cyan.shade400,
      //     ]),
      //   ),
      //   child: Column(
      //     children:[
      //       SizedBox(
      //         height: 80,
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(20),
      //         child:
      //         Padding(
      //           padding: const EdgeInsets.all(20.0),
      //           child: CircleAvatar(
      //             radius:50.0,
      //             backgroundImage:NetworkImage('https://media-exp1.licdn.com/dms/image/C4D0BAQH3FO9cJ_cvNQ/company-logo_200_200/0/1614875994929?e=2147483647&v=beta&t=nmd8bFotlVgTT_RtuzDAHhuK_DJW_WJ-HdeZremFOaQ',),
      //           ),
      //         ),
      //       ),
      //
      //       Expanded(
      //         child: Container(
      //           width: double.infinity,
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.only(
      //            topLeft: Radius.circular(60),
      //             topRight: Radius.circular(60),
      //           ),
      //         ),
      //         child: SingleChildScrollView(
      //             child: Padding(
      //               padding: const EdgeInsets.all(40),
      //               child: Column(
      //               children: [
      //                 Text('Bienvenue a notre application de L\'ISCAE',
      //                 style: TextStyle(
      //                   fontSize: 13,
      //                   fontWeight: FontWeight.bold
      //                 ),
      //                 ),
      //                 SizedBox(
      //                   height: 40,
      //                 ),
      //                 Text(
      //                   'vous pouver vous inscrire a traver l\'aplication tous simplement avec notre application dans l\'instutut de l\'ISCAE cliquer sure votre niveau et remplire votre formilaire puis suivre les etape apre ',
      //                   style: TextStyle(
      //                       fontSize: 13,
      //                     fontWeight: FontWeight.bold,
      //                     color: Colors.black54
      //
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   height: 40,
      //                 ),
      //                 MaterialButton(
      //                   onPressed: (){
      //                     Navigator.push(context, MaterialPageRoute(builder:(context) => Home()));
      //                   },
      //                   child: Text(
      //                     'LICENCE',
      //                     style: TextStyle(
      //                         fontSize: 18,
      //                         fontWeight: FontWeight.bold,
      //                         color:  Colors.cyan
      //
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   height: 40,
      //                 ),
      //                 MaterialButton(
      //                   onPressed: (){
      //                     Navigator.push(context, MaterialPageRoute(builder:(context) => homM()));
      //                   },
      //                   child: Text(
      //                     'MASTER',
      //                     style: TextStyle(
      //                         fontSize: 18,
      //                         fontWeight: FontWeight.bold,
      //                         color:  Colors.cyan
      //
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //           ),
      //             ),
      //         ),
      //       ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
