import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/customer/fuel_queue.dart';
import 'package:fuel_app/customer/home_fuel/diesel.dart';
import 'package:fuel_app/customer/home_fuel/petrol.dart';
import 'package:fuel_app/customer/station_find.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _showWidget1 = true;
  bool _showWidget2 = false;

  Color _bgColor1 = Colors.white;
  Color _bgColor2 = Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Stack(
         children: [
           Image.asset(
             'assets/img/5.png',
             width: MediaQuery.of(context).size.width,
             height:MediaQuery.of(context).size.height,
             fit: BoxFit.fill,
           ),
           Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(
                       top: 65,
                     ),
                     child: Container(
                       width: 176,
                       height: 51,
                       decoration: const BoxDecoration(
                         color: Color(0xffF7DA42),
                         borderRadius: BorderRadius.only(
                             topRight: Radius.circular(40),
                             bottomRight: Radius.circular(40)),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           InkResponse(
                             onHover: (value) {},
                             onTap: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => StationFind()),
                               );
                             },
                             highlightColor: Colors.yellowAccent,
                             child: Container(
                                 width: 37,
                                 height: 37,
                                 decoration: const BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Color(0xffF7DA42),
                                 ),
                                 child: Icon(Icons.location_on_outlined)),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 13, right: 13),
                             child: InkResponse(
                               onHover: (value) {},
                               onTap: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => Home()),
                                 );
                               },
                               highlightColor: Colors.yellowAccent,
                               child: Container(
                                   width: 37,
                                   height: 37,
                                   decoration: const BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.white),
                                   child: Icon(Icons.home_outlined)),
                             ),
                           ),
                           InkResponse(
                             onHover: (value) {},
                             onTap: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => FuelQueue()),
                               );
                             },
                             highlightColor: Colors.yellowAccent,
                             child: Container(
                                 width: 37,
                                 height: 37,
                                 decoration: const BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Color(0xffF7DA42),
                                 ),
                                 child: Icon(Icons.directions_run_outlined)),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 57,left: 32,right: 32),
                 child: Expanded(
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           InkWell(
                             onHover: (value) {},
                             onTap: () {
                               setState(() {
                                 _showWidget1 = !_showWidget1;
                                 _bgColor1 = Color(0xffF7DA42);
                               }
                               );
                             },

                             child: Container(
                               width: 114,
                               height: 54,
                               decoration: const BoxDecoration(
                                 color: Color(0xffF7DA42),
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(15),
                                 ),
                                 boxShadow: const [
                                   BoxShadow(
                                     color: Colors.black54,
                                     blurRadius: 4.0,
                                     spreadRadius: 1.5,
                                     offset: Offset(
                                       3,
                                       3,
                                     ),
                                   ),
                                 ],
                               ),
                               child: Center(
                                   child: Text(
                                 'Petrol',
                                 style: TextStyle(
                                     fontSize: 20,
                                     color: Colors.black,
                                     fontWeight: FontWeight.w600),
                               )),
                             ),
                           ),
                           SizedBox(width: 15,),


                           Column(
                             children: [
                               InkWell(
                                 onHover: (value) {},
                                 onTap: () {
                                   setState(() {
                                     _showWidget2 = !_showWidget2;
                                     _bgColor2 = Color(0xffF7DA42);
                                   }
                                   );
                                 },

                                 child: Container(
                                   width: 114,
                                   height: 54,
                                   decoration: const BoxDecoration(
                                     color: Color(0xffF7DA42),
                                     borderRadius: BorderRadius.only(
                                       topRight: Radius.circular(15),
                                     ),
                                     boxShadow: const [
                                       BoxShadow(
                                         color: Colors.black54,
                                         blurRadius: 4.0,
                                         spreadRadius: 1.5,
                                         offset: Offset(
                                           3,
                                           3,
                                         ),
                                       ),
                                     ],
                                   ),
                                   child: const Center(
                                       child: Text(
                                     'Diesel',
                                     style: TextStyle(
                                         fontSize: 20,
                                         color: Colors.black,
                                         fontWeight: FontWeight.w600),
                                   )),
                                 ),
                               ),


                             ],
                           ),

                         ],
                       ),
                        SizedBox(height: 5,),
                        if (_showWidget1) Petrol(),
                       SizedBox(height: 5,),
                       if (_showWidget2) Desal(),

                       SizedBox(
                         height: 20,
                       ),
                       Container(
                         width: 350,
                         height: 182,
                         decoration: BoxDecoration(
                           color: Color(0xffF7DA42),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         child: Column(
                           children: [
                             const SizedBox(
                               height: 15,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: const [
                                 Text(
                                   'Total',
                                   style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w900,
                                       color: Colors.black),
                                 ),
                                 SizedBox(
                                   width: 6,
                                 ),
                                 Text(
                                   'Vehicles',
                                   style: TextStyle(
                                       fontSize: 24,
                                       fontWeight: FontWeight.w900,
                                       color: Colors.black),
                                 ),
                                 SizedBox(
                                   width: 30,
                                 ),
                                 Text(
                                   '24',
                                   style: TextStyle(
                                       fontSize: 36,
                                       fontWeight: FontWeight.w900,
                                       color: Colors.black),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Column(
                                   children: [
                                     Text(
                                       'Bick',
                                       style: TextStyle(
                                           fontSize: 18, color: Colors.black),
                                     ),
                                     SizedBox(
                                       height: 20,
                                     ),
                                     Text(
                                       '12',
                                       style: TextStyle(
                                           fontSize: 24, color: Colors.black),
                                     ),
                                   ],
                                 ),
                                 SizedBox(
                                   width: 30,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 20),
                                   child: Container(
                                     height: 90,
                                     width: 1.8,
                                     color: Colors.black,
                                   ),
                                 ),
                                 SizedBox(
                                   width: 30,
                                 ),
                                 Column(
                                   children: const [
                                     Text(
                                       'Bick',
                                       style: TextStyle(
                                           fontSize: 18, color: Colors.black),
                                     ),
                                     SizedBox(
                                       height: 30,
                                     ),
                                     Text(
                                       '8',
                                       style: TextStyle(
                                           fontSize: 24, color: Colors.black),
                                     ),
                                   ],
                                 ),
                                 SizedBox(
                                   width: 30,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 20),
                                   child: Container(
                                     height: 90,
                                     width: 1.8,
                                     color: Colors.black,
                                   ),
                                 ),
                                 SizedBox(
                                   width: 30,
                                 ),
                                 Column(
                                   children: const [
                                     Text(
                                       'Bick',
                                       style: TextStyle(
                                           fontSize: 18, color: Colors.black),
                                     ),
                                     SizedBox(
                                       height: 20,
                                     ),
                                     Text(
                                       '4',
                                       style: TextStyle(
                                           fontSize: 24, color: Colors.black),
                                     ),
                                   ],
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),
                         Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30,left: 35),
                              child: InkResponse(
                                onHover: (value) {},
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => FuelQueue()),
                                  );
                                },
                                child: Container(
                                  height: 51,
                                  width: 260,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC17113),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 4.0,
                                        spreadRadius: 1.5,
                                        offset: Offset(
                                          3,
                                          3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: const Center(
                                    child: Text('Join to the queue Now',
                                        style: TextStyle(
                                          fontFamily: 'MerriweatherSans',
                                          fontSize: 20,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ],
       ),
     ),
      );
  }
}
