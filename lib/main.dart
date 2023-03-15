import 'package:flutter/material.dart';
import 'search_tab.dart';
import 'nearby_buddies.dart';
import 'nearby_stores.dart';
import 'life_styel.dart';


void main(){
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  } 
}

class _MyAppState extends State<MyApp>{

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<List<String>> personsDetails = [
    ['Ujjwal jain', 'Coding', "https://www.jhu.edu/assets/uploads/2019/05/kale_thumb-500x500.jpg"],
    ['Priya Gupta', 'Cooking', "https://images.unsplash.com/photo-1674714865408-2b510940a34f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"], 
  ];
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color.fromRGBO(200, 200, 200, 1),
          child: Column(
            children: <Widget> [
              SearchTab(height: height),
              Expanded(
                child: ListView(
                padding: EdgeInsets.zero,
                  children: [
                    NearbyBuddies(height: height,person: personsDetails),
                    NearbyStores(height: height),
                    LifeStyle(height: height),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigation(),
      ),
    );
  }

  Widget bottomNavigation (){
    return BottomNavigationBar(

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Education',
        )
      ],

      // Container properties
      elevation: 0,
      // backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      backgroundColor: Colors.white,
      // Inactive Icons properties
      showUnselectedLabels: false,
      unselectedItemColor: Colors.black.withOpacity(0.8),

      // Active Icons properties
      showSelectedLabels: false,
      selectedItemColor: Colors.blue,

      currentIndex: currentIndex,
      iconSize: Checkbox.width * 1.6,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {setState(() {currentIndex = value;}); },
    );
  }

}