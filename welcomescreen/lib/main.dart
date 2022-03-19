import 'package:flutter/material.dart';

 void main(){
   runApp(Myapp());
 }
 class Myapp extends StatelessWidget {
  
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "Welcome Screen",
       theme: ThemeData.dark(),
       home: Homepage(),
     );
   }
 }
 class Homepage extends StatelessWidget {
   
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromARGB(204, 36, 35, 35),
       body: Container(
         
         child: Column(
           children: [
             Expanded(
               flex: 7,
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                   image: DecorationImage(
                     image: NetworkImage("https://images.unsplash.com/photo-1453791052107-5c843da62d97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", 
                     ),
                     fit: BoxFit.cover
                   ),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 60),
                   child: SafeArea(// Safe Area is what when you right text and with the help of safe area, your text just go on top down from status bar. 
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         
                         Column(
                           children: [
                             Text("Welcome", style: TextStyle(fontSize: 40, color: Color.fromARGB(239, 230, 238, 236)),),
                         Text("You think that you know me good",style: TextStyle(fontSize: 17, color: Color.fromARGB(239, 230, 238, 236)), )
                           ],

                         ),
                         Column(
                           children: [
                             Icon(Icons.keyboard_arrow_down, size: 45,),
                           ],
                           
                         )

                       ],
                       
                     ),
                     
                   ),
                 ),
               ),
             ),
             Expanded(
               flex: 1,
               child: Container(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 40),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Text("Login", style: TextStyle(fontSize: 20),),
                           Icon(Icons.arrow_forward, size: 30,),
                         ],
                       ),
                        Row(
                         children: [
                           Text("New", style: TextStyle(fontSize: 20),),
                           Icon(Icons.add, size: 30,),
                         ],
                       ),
                     ],
                     
                   ),
                 ),
               ),
             )

         ]
         ),

       ),
     );
   }
 }