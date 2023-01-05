import 'package:flutter/material.dart';
import 'package:fuel_app/customer/endpage.dart';
import 'package:fuel_app/customer/home.dart';
import 'package:fuel_app/customer/station_find.dart';

class FuelQueue extends StatefulWidget {
  const FuelQueue({Key? key}) : super(key: key);

  @override
  _FuelQueueState createState() => _FuelQueueState();
}

class _FuelQueueState extends State<FuelQueue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/4.png',
            width: MediaQuery.of(context).size.width,
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
                                    color: Color(0xffF7DA42)),
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
                                      color: Color(0xffF7DA42)),
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
                                  color: Colors.white,
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
                        SizedBox(
                          height: 40,
                        ),
                        Text('You Entered fuel Queue Now',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'MerriweatherSans',
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 49,
                          width: 279,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38),
                          child: Row(
                            children: [
                              Text('Arrival Time :',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'MerriweatherSans',
                                    fontSize: 16,
                                    color: Colors.black,
                                  )),
                              SizedBox(
                                width: 8,
                              ),
                              Text(' xx:xx ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'MerriweatherSans',
                                    fontSize: 16,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Center(
                          child: InkResponse(
                            onHover: (value) {},
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EndPage()),
                              );
                            },
                            child: Container(
                              height: 44,
                              width: 279,
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
                              child:Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Color(0xA6E09B52),
                                        child: Center(
                                            child: Icon(
                                              Icons.directions_run_outlined,
                                              color: Colors.yellow,
                                            ))),
                                    SizedBox(width: 12,),
                                    Text('Exit after Pump fuel',
                                        style: TextStyle(
                                          fontFamily: 'MerriweatherSans',
                                          fontSize: 16,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: InkResponse(
                            onHover: (value) {},
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Container(
                              height: 44,
                              width: 279,
                              decoration: BoxDecoration(
                                color: Color(0xffDC9C52),
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
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Color(0xA6FFEB3B),
                                        child: Center(
                                            child: Icon(
                                          Icons.exit_to_app_outlined,
                                          color: Colors.red,
                                        ))),
                                    SizedBox(width: 12,),
                                    Text('Exit before Pump fuel',
                                        style: TextStyle(
                                          fontFamily: 'MerriweatherSans',
                                          fontSize: 16,
                                          color: Colors.white,
                                        )),
                                  ],
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
    );
  }
}
