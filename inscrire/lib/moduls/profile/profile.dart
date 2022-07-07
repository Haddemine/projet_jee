import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
         Container(
           height: 190,
           child: Stack(
             alignment: AlignmentDirectional.bottomCenter,
             children: [
               Align(
                 alignment: AlignmentDirectional.topCenter,
                 child: Container(
                   height: 140,
                   width: double.infinity,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(4),
                       topRight: Radius.circular(4),
                     ),
                     image: DecorationImage(
                       image: NetworkImage('https://www.quickanddirtytips.com/sites/default/files/images/2332/people-persons-peoples.jpg'
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),
               CircleAvatar(
                 radius: 53,
                 backgroundColor: Color.fromARGB(180, 182, 252, 249),
                 child: CircleAvatar(
                   radius: 50,
                   backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                 ),
               ),
             ],
           ),
         ),
          Text('mbare salem',
          style:TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(
            height: 5,
          ),
          Text('bio...',
            style:TextStyle(
                fontWeight: FontWeight.w300
            ),
          ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical:20.0),
           child: Row(
             children: [
               Expanded(
                 child: InkWell(
                   child: Column(
                     children:[
                       Text(
                         '100',style: TextStyle(
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                       Text('Posts',
                         style:TextStyle(
                             fontWeight: FontWeight.w300
                         ),
                       ),
                     ]
                   ),
                   onTap: (){},
                 ),
               ),
               Expanded(
                 child: InkWell(
                   child: Column(
                       children:[
                         Text(
                           '100',
                           style: TextStyle(
                           fontWeight: FontWeight.bold,
                         ),
                         ),
                         Text('Posts',
                           style:TextStyle(
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ]
                   ),
                   onTap: (){},
                 ),
               ),
               Expanded(
                 child: InkWell(
                   child: Column(
                       children:[
                         Text(
                           '100',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text('Posts',
                           style:TextStyle(
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ]
                   ),
                   onTap: (){},
                 ),
               ),
               Expanded(
                 child: InkWell(
                   child: Column(
                       children:[
                         Text(
                           '100',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text('Posts',
                           style:TextStyle(
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ]
                   ),
                   onTap: (){},
                 ),
               ),
             ],
           ),
         ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: (){},
                  child: Text('Add Photos',
                  style:TextStyle(
                      color:Color(0xff226e79),
                  ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: (){},
                child: Icon(
                  Icons.edit,
                  color: Color(0xff226e79),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
