import 'package:flutter/material.dart';
import 'chat_screen/listTile_code.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int myIndex=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar:

          BottomNavigationBar(
onTap: (index){
  setState(() {
    myIndex=index;
  });
},
              currentIndex: myIndex,
              items: [
                BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: ("Chats"),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.update_outlined),
              label: ("Updates"),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_sharp),
              label: ("Communities"),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_sharp),
              label: ("Calls"),
              backgroundColor: Colors.black,
            ),



          ]),
          backgroundColor: Colors.black,
          appBar: AppBar(
            actions: [
              Icon(Icons.camera_alt,color: Colors.white,),
              SizedBox(width: 10,),
              Icon(Icons.more_vert,color: Colors.white,),
            ],
            backgroundColor:  Colors.black,
            title: const Text("WHATSAPP",style:TextStyle(color: Colors.white),),


          ),
          body: SingleChildScrollView(
            child: Column(
                  children: [
            
                    Container(
                      height: 50,
                      width: 350,
            
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius:BorderRadius.circular(30),
                      ),
            
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
            
                            Icon(Icons.search),  Text('Ask Meta AI Or Search'),
                          ],
                        ),
                      ),
                    ),
                    ListtileCode(name: 'Qaiser',message: "Murshad kdr ho?",date: '4:06PM', myImage: AssetImage('assets/qaiser.jpg'),),
                    ListtileCode(name: 'Ibrar',message: "o nikkiya?",date: '4:07AM',myImage: AssetImage('assets/ibrar.png'),),
                    ListtileCode(name: 'Zeeshan',message: "Monday ko ana hay?",date: '8:06AM',myImage: AssetImage('assets/zeeshan.jpg'),),
                    ListtileCode(name: 'Imran',message: "Bat ly ky ana",date: '3:11PM',myImage: AssetImage('assets/imran.png'),),
                    ListtileCode(name: 'Ali',message: "kal bate ly  ky ana",date: '5:06AM',myImage: AssetImage('assets/ali.jpg'),),
                    ListtileCode(name: 'Huzaifa',message: "spray kitny d hay?",date: '1:06AM',myImage: AssetImage('assets/huzaifa.jpg'),),
                    ListtileCode(name: 'Maaz',message: "vesy main ny  ap sy poocha nii tha?",date: '3:23AM',myImage: AssetImage('assets/maaz.jpg'),),
                    ListtileCode(name: 'Sarim',message: " burger kitny ka hay?",date: '3:45AM',myImage: AssetImage('assets/sarim.jpg'),
                    ),

                  ]
              ),
             // Aligns it to the bottom-right
          ))

          ), // Container for Meta Ai



      );

  }
}
