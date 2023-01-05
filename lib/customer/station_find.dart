import 'package:flutter/material.dart';
import 'package:fuel_app/customer/fuel_queue.dart';
import 'package:fuel_app/customer/home.dart';

class StationFind extends StatefulWidget {
  const StationFind({Key? key}) : super(key: key);

  @override
  _StationFindState createState() => _StationFindState();
}

class _StationFindState extends State<StationFind> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/img/4.png',
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
                                    color: Colors.white,
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
                                      color: Color(0xffF7DA42)
                                    ),
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
                   padding: const EdgeInsets.only(top: 75),
                   child: Center(
                     child: Container(
                       width: 340,
                       height: 420,
                       decoration: BoxDecoration(
                         color: Color(0xffF7DA42),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Column(
                         children: [
                           const SizedBox(height: 20,),
                           const Text('Search Your Nearest shed',
                               style: TextStyle(
                                 fontWeight: FontWeight.w600,
                                 fontFamily: 'MerriweatherSans',
                                 fontSize: 20,
                                 color: Colors.black,
                               )),
                           SizedBox(height: 40,),
                           Container(
                             height: 44,
                             width: 285,
                             decoration: BoxDecoration(
                               border: Border.all(color: Colors.black, width: 1),
                               borderRadius: BorderRadius.circular(15),

                             ),
                             child:   Row(
                               mainAxisAlignment: MainAxisAlignment.end,

                               children: [
                                 DropdownButton<String>(
                                   value: dropdownValue,
                                   icon: Icon(Icons.keyboard_arrow_down_rounded),
                                   iconSize: 35,
                                   elevation: 16,
                                   hint:  const Padding(
                                     padding: EdgeInsets.only(right: 80),
                                     child: Text('Select Fuel Station', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19)),
                                   ),
                                   style: TextStyle(color: Colors.black87),
                                   underline: Container(
                                     height: 2,

                                   ),
                                   onChanged:  (newValue) {
                                     setState(() {
                                       dropdownValue = newValue;
                                     });
                                   },
                                   items: <String>['One', 'Two', 'Free', 'Four']
                                       .map<DropdownMenuItem<String>>((String value) {
                                     return DropdownMenuItem<String>(
                                       value: value,
                                       child: Text(value),
                                     );
                                   }).toList(),
                                 ),
                               ],
                             ),

                           ),
                           SizedBox(height: 200,),
                           InkResponse(
                             onHover: (value) {},
                             onTap: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => FuelQueue()),
                               );
                             },
                             child: Container(
                               height: 45,
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
                                 child: Text('Go to the Station',
                                     style: TextStyle(
                                       fontFamily: 'MerriweatherSans',
                                       fontSize: 19,
                                       color: Colors.white,
                                     )),
                               ),
                             ),
                           ),

                         ],
                       ),
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
