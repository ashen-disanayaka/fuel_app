import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/fuel_Operater/operater_home.dart';


class Fuel_Update extends StatefulWidget {
  const Fuel_Update({Key? key}) : super(key: key);

  @override
  _Fuel_UpdateState createState() => _Fuel_UpdateState();
}

class _Fuel_UpdateState extends State<Fuel_Update> {
  bool? check3 = false;
  bool? check1 = false;
  bool? check2 = false;
  bool? check4 = false;
  bool? check5 = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/img/6.png',
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

                              },
                              highlightColor: Colors.yellowAccent,
                              child: Container(
                                  width: 37,
                                  height: 37,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffF7DA42)
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
                                    MaterialPageRoute(builder: (context) => Operater_home()),
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
                                  MaterialPageRoute(builder: (context) => Fuel_Update()),
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
                                  child: Icon(Icons.perm_identity_rounded)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60,),
                    child: Center(
                      child: Container(
                        width: 355,
                        height: 455,
                        decoration: BoxDecoration(
                          color: Color(0xffF7DA42),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 20,),
                                Center(
                                  child: Text('Update Profile Data',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Contact Number:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 42,
                                        width: 185,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white
                                        ),

                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.black,


                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Diesel Capacity:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 42,
                                        width: 185,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white
                                        ),

                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.black,

                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Petrol Capacity:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 42,
                                        width: 185,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white
                                        ),

                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.black,


                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Fuel Arrival Time:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 42,
                                        width: 185,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white
                                        ),

                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.black,


                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Fuel Finish Time:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 42,
                                        width: 185,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white
                                        ),

                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.black,


                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Password:',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 42,
                                        width: 185,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white
                                        ),

                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.black,


                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                              ],
                            ),

                             Flexible(child: SizedBox(height: 20,)),
                             Flexible(
                               child: Center(
                                child: InkResponse(
                                  onHover: (value) {},
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Operater_home()),
                                    );

                                  },

                                  child:  Container(
                                    height: 42,
                                    width: 284,
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
                                      child: Text('Update',
                                          style: TextStyle(
                                            fontFamily: 'MerriweatherSans',
                                            fontSize: 20,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
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
