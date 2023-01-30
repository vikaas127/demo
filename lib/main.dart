import 'package:demo/Model_comm.dart';
import 'package:demo/paricularcomint.dart';
import 'package:flutter/material.dart';

import 'Model_comm.dart';
import 'Model_users.dart';
import 'paricularcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xffAECD63)),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: "Manto",
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Doctor Appointment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

List<usermodel> userlist=[];
List<usercomm> usercommt=[];
@override
  void initState() {

  userlist.add(usermodel("Dr. Nancy Stevens","BDS, MDS","assets/img_2.png","09:00 am - 06:30 pm"));
  userlist.add(usermodel("Dr. Derrick Malone","BDS, MDS","assets/img.png","09:00 am - 06:30 pm"));
  userlist.add(usermodel("Dr. Meghan Stella","BDS, MDS","assets/img_1.png","09:00 am - 06:30 pm"));
  userlist.add(usermodel("Dr. Nancy Stevens","BDS, MDS","assets/img.png","09:00 am - 06:30 pm"));
  usercommt.add(usercomm("Andrews Jettpace","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.","assets/img_3.png",4.5));
  usercommt.add(usercomm("Stacy Stone","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.","assets/img_4.png",5));
  usercommt.add(usercomm("Meghan Stella","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.","assets/img_1.png",4));
  usercommt.add(usercomm("Nancy Stevens","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.","assets/img.png",2));

  super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:userlist.isNotEmpty?
      Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListView.builder(
              physics:NeverScrollableScrollPhysics() ,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: userlist.length,
            itemBuilder: (context,index){
              return particulardoctor(userdata: userlist[index],);

    }),
            Row(children: const [
              Expanded(flex: 2,
                child:  Padding(
              padding: EdgeInsets.all(8.0),
              child:  Text("Reviews",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey),)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Icon(Icons.more_horiz),
              )
            ],
            ),
              ListView.builder(
                  physics:const NeverScrollableScrollPhysics() ,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: usercommt!.length,
                  itemBuilder: (context,i){
                    return paricularcomint(userdata: usercommt[i],);

                  }),
          ],
        ),
      ):const Center(child: CircularProgressIndicator())

    );
  }
}
