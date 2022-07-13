import 'package:flutter/material.dart';
import 'package:inscrire/moduls/inscrippublic/public.dart';
import 'package:inscrire/moduls/inscrippublic/publicl2l3.dart';
import 'package:inscrire/moduls/inscriptionprive/prive.dart';
import 'package:inscrire/moduls/inscriptionprive/privel2l3.dart';

class homM extends StatelessWidget {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // final filierP=Provider.of<FilierProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Master',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      key: scaffoldkey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius:50.0,
              backgroundImage:NetworkImage('https://media-exp1.licdn.com/dms/image/C4D0BAQH3FO9cJ_cvNQ/company-logo_200_200/0/1614875994929?e=2147483647&v=beta&t=nmd8bFotlVgTT_RtuzDAHhuK_DJW_WJ-HdeZremFOaQ',),
            ),
          ),
          Container(
            color: Colors.white,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    children:[
                      MaterialButton(
                        onPressed:(){
                          scaffoldkey.currentState!.showBottomSheet((context) =>
                              Container(
                                height: 370,
                                width: double.infinity,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:BorderRadius.circular(20),
                                          color: Colors.grey,
                                        ),
                                        width: 70,
                                        height: 10,

                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:BorderRadius.circular(20),
                                            color: Colors.cyan,
                                          ),
                                          width: double.infinity,
                                          height: 80,
                                          child: MaterialButton(
                                            onPressed:(){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => PublicL1(),
                                              ),
                                              );
                                            },
                                            child: Text(
                                              " Master1",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:BorderRadius.circular(20),
                                            color: Colors.cyan,
                                          ),
                                          width: double.infinity,
                                          height: 80,
                                          child: MaterialButton(
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => PublicL2()
                                              ),
                                              );
                                            },
                                            child: Text(
                                              "Master 2",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.cyan,
                          child: Icon(
                            Icons.add_circle,
                            color: Color(0xff226e79),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:8,
                      ),
                      Text(
                        "public",
                        maxLines: 2,
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 82,
                  ),
                  Column(

                      children:[
                        MaterialButton(
                          onPressed: (){
                            scaffoldkey.currentState!.showBottomSheet((context) =>
                                Container(
                                  height: 370,
                                  width: double.infinity,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:BorderRadius.circular(20),
                                            color: Colors.grey,
                                          ),
                                          width: 70,
                                          height: 10,

                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.cyan,
                                            ),
                                            height: 80,
                                            width: double.infinity,
                                            child: MaterialButton(
                                              onPressed:(){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => PriveL1()
                                                ),
                                                );
                                              },
                                              child: Text(
                                                "Master 1",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:BorderRadius.circular(20),
                                              color: Colors.cyan,
                                            ),
                                            height: 80,
                                            width: double.infinity,
                                            child: MaterialButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => PriveL2()
                                                ),
                                                );
                                              },
                                              child: Text(
                                                "Master 2",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            );
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.cyan,
                            child: Icon(
                              Icons.add_circle,
                              color: Color(0xff226e79),
                            ),
                            radius:27,
                          ),
                        ),
                        SizedBox(
                          height:8,
                        ),
                        Text('privé',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                          ),
                          maxLines: 2,
                        ),
                      ]
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'search',
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ChangeNotifierProvider(
          //   create:(context)=> FilierProvider(),
          //   child:Text('data'),
          // ),
          //  ListView.builder(
          //      itemCount: filierP.Filiers.length,
          //      itemBuilder: (BuildContext context,int index){
          //        return ListTile(
          //          title: Text(filierP.Filiers[index].nom),
          //        );
          //      },
          //  ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: ()
      //   {
      //     DioHelper.getData(url:'v2/top-headlines',query: {
      //       'country':'eg',
      //       'category':'business',
      //       'apikey':'65f7f556ec76449fa7dc7c0069f040ca',
      //     }).then((value){
      //       print(value.data['articles'][0]['title']);
      //     }).catchError((error){
      //       print(error.toString());
      //     });
      //   },
      // child: Icon(
      //   Icons.add,
      // ),
      // ),
    );
  }
}