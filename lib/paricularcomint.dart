import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model_comm.dart';
import 'Model_users.dart';

class paricularcomint extends StatefulWidget{
  final usercomm userdata;

  const paricularcomint({super.key, required this.userdata});
  @override
  State<StatefulWidget> createState() {
return   paricularcomintstate();
  }

}
class paricularcomintstate extends State<paricularcomint>{
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(2.0),
     child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(0.0),
               child: Container(

                 decoration:  BoxDecoration(
                   borderRadius: BorderRadius.circular(20), //

                 ),

                 // width:  MediaQuery.of(context).size.width*0.80,
                 child: Column(children: [
                   Row(
                     children: [
                       Expanded(flex: 1,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(40), // Image border
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
                                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                 child: Text("${widget.userdata.dis}", style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.grey)),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                   )
                 ],),),
             ),
             const SizedBox(height: 5,),
             Row(children: [

               Container(
                   decoration:  BoxDecoration(
                       borderRadius: BorderRadius.circular(15), //
                       color: Color(0xff1F4068)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 4),
                     child: Row(
                       children: [


                         Text(widget.userdata.rate.toString(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 14)),

                       ],
                     ),
                   )),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children: [

                   ],
                 ),
               ),
               SizedBox(width: MediaQuery.of(context).size.width*0.37,),
               SizedBox(

                   height: 40,


                   child:   Padding(
                     padding:  EdgeInsets.all(8.0),
                     child: Text("${widget.userdata.name}",
                       style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                   ),
               ),
             ],),
             const SizedBox(height: 5,),
           ],
         ),
       ),

   );
  }

}