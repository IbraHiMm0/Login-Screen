import 'package:flutter/material.dart';
import 'package:untitled/Archived/ArchivedTasks.dart';
import 'package:untitled/DoneTasks/DoneTasks.dart';
import 'package:untitled/NewTasks/NewTasks.dart';

class HomeLayout extends StatefulWidget{
  const HomeLayout({super.key});

  @override
  _HomeLayoutState createState()=>_HomeLayoutState();
}
class _HomeLayoutState extends State<HomeLayout>{
  int Cur=0;

  List<Widget> screens = [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];
  List<String> title = [
        'New Tasks',
        'Done Tasks',
        'Archived',
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title[Cur],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        currentIndex: Cur,
        onTap: (index)
        {
        setState(() {
          Cur=index;
        });

        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline_outlined),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived',
          ),
        ],
      ),
      body: screens[Cur],
    );
  }
}
