import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.green,
       leading: Icon(Icons.menu
       ),
       title: Text(
         'Hello',
       ),
       actions: [
         IconButton(
           icon:Icon(Icons.notifications
         ) ,
           onPressed: onNotif ,),
         IconButton(onPressed:onSearch
             , icon:Icon(Icons.search
         )),
       ],
     ),
     body:  Container(
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Expanded(
             child: Container(
               color: Colors.redAccent,
               child: Text(
                'First',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ) ,
          ),
             ),
           ),
           Expanded(
             child: Container(
               color:Colors.blue,
               child: Text(
                 'Second',
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ) ,
               ),
             ),
           ),
           Expanded(
             child: Container(
               color: Colors.yellow,
               child: Text(
                 'Third',
                 style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ) ,
               ),
             ),
           ),
         ],
       ),
     ) ,
   );
  }

  void onSearch(){
    print('Search clicked');
  }
  void onNotif(){
    print('notif clicked');
  }
}