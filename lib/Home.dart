import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigationabr/DoctorList.dart';
import 'package:flutter_bottom_navigationabr/HealthTips.dart';
import 'package:flutter_bottom_navigationabr/Lifestyle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedPage=0;
  final _pageOptions=[
    DoctorList(),
    HealthTips(),
    Lifestyle()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Bottom Navigation Bar"),
        backgroundColor: Colors.green,
      ),

      body: _pageOptions[_selectedPage],


//      bottomNavigationBar: new Theme(
//        data: Theme.of(context).copyWith(
//          // sets the background color of the `BottomNavigationBar`
//            canvasColor: Colors.green,
//            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
//        ), // sets the inactive color of the `BottomNavigationBar`
//        child: new BottomNavigationBar(
//          currentIndex: _selectedPage,
//          onTap: (int index){
//            setState(() {
//              _selectedPage=index;
//            });
//          },
//          items: [
//            new BottomNavigationBarItem(
//              icon: new Icon(Icons.add,color: Colors.white,size: 25.0,),
//              title: new Text("Add",style: TextStyle(fontSize: 20.0,color: Colors.white),),
//            ),
//            new BottomNavigationBarItem(
//              icon: new Icon(Icons.delete),
//              title: new Text("Delete"),
//            )
//          ],
//        ),
//      ),

      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
              _selectedPage=index;
            });
          },
          items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Add")),
        new BottomNavigationBarItem(icon: new Icon(Icons.send), title: new Text("Send")),
        new BottomNavigationBarItem(icon: new Icon(Icons.search), title: new Text("SEARCH"))
      ],
      ),

    );
  }
}




