


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_ui/screens/Add.dart';
import 'package:youtube_ui/screens/Home.dart';
import 'package:youtube_ui/screens/Library.dart';
import 'package:youtube_ui/screens/Reels.dart';
import 'package:youtube_ui/screens/Subscriptions.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData.dark(),
     home: Home(),
   );
  }
}

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedIndex = 0;
  void onChange( value) {
    setState(() {
      selectedIndex = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    var pages = [
      Home_View(),
      Reels(),
      Add_view(),
      Sub(),
      Lib()
    ];

   return Scaffold(
     body: pages[selectedIndex],
     bottomNavigationBar: Container(
       height: 60,
       child: BottomNavigationBar(
         selectedItemColor: Colors.white,
         type: BottomNavigationBarType.fixed,
         onTap: onChange,
         currentIndex: selectedIndex,
         items: [
           BottomNavigationBarItem(icon: (selectedIndex == 0) ? Icon(Icons.home_filled):Icon(Icons.home_outlined),label: 'Home'),
           BottomNavigationBarItem(icon: (selectedIndex == 1) ? Icon(Icons.video_collection):Icon(Icons.video_collection_outlined),label: 'Shorts'),
           BottomNavigationBarItem(icon: Stack(alignment: Alignment.center,
             children: [
             CircleAvatar(backgroundColor: Colors.white,radius: 15,),
             CircleAvatar(radius: 14,backgroundColor: Colors.black.withOpacity(.8),child: Icon(Icons.add,color: Colors.white,))
           ],) ,label: ''),
           BottomNavigationBarItem(icon: (selectedIndex == 3) ? Icon(Icons.subscriptions):Icon(Icons.subscriptions_outlined),label: 'Subscriptions'),
           BottomNavigationBarItem(icon: (selectedIndex == 4) ? Icon(Icons.library_add_check):Icon(Icons.library_add_check_outlined),label: 'Library'),
         ],
       ),
     ),
   );
  }
}



