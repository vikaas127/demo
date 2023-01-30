import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model_users.dart';

class particulardoctor extends StatefulWidget{
  final usermodel userdata;

  const particulardoctor({super.key, required this.userdata});
  @override
  State<StatefulWidget> createState() {
return   particulardoctorstate();
  }

}
class particulardoctorstate extends State<particulardoctor>{
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(2.0),
     child: Card(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20.0),
       ),
       elevation: 20,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Stack(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(0.0),
                   child: Container(

                     decoration:  BoxDecoration(
                       borderRadius: BorderRadius.circular(20), //
                        gradient: const LinearGradient(
                       begin: Alignment.topRight,
                       end: Alignment.bottomLeft,
                       stops: [0.1,  0.9],
                       colors: [
                         Colors.white,
                         Color(0xffAECD63),


                       ],
                     ),
                     ),

                    // width:  MediaQuery.of(context).size.width*0.80,
                     child: Column(children: [
                     Row(
                       children: [
                         Expanded(flex: 1,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(15), // Image border
                               child: SizedBox.fromSize(
                                 size: const Size.fromRadius(40), // Image radius
                                 child: Image.asset(
                                     widget.userdata.profile.toString(),fit: BoxFit.fitWidth,),
                               ),
                             ),
                           )
                         ),
                         Expanded(flex: 3,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("${widget.userdata.name}",
                                     style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                   child: Text("${widget.userdata.degree}", style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.grey)),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     )
                   ],),),
                 ),
                 const Positioned(right: 0,top: 0,
                     child: Icon(Icons.more_horiz))
               ],
             ),
             const SizedBox(height: 5,),
             Row(children: [


               Container(
                   decoration:  BoxDecoration(
                       borderRadius: BorderRadius.circular(20), //
                       color: Colors.black
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         const Icon(Icons.access_time,color: Color(0xffAECD63),),
                         const SizedBox(width: 10,),
                         Text("${widget.userdata.slot}",style: const TextStyle(color: Color(0xffAECD63))),
                       ],
                     ),
                   )),
               const SizedBox(width: 100,),
               Container(
                 width: 80,
                   height: 40,
                   decoration:  BoxDecoration(
                       borderRadius: BorderRadius.circular(20), //
                       color: const Color(0xffE43F5A)
                       ),

                   child: const Padding(
                     padding: EdgeInsets.all(8.0),
                     child:   Center(child: Text("Book",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 12))),

                   )),
             ],),
             const SizedBox(height: 5,),
           ],
         ),
       ),
     ),
   );
  }

}