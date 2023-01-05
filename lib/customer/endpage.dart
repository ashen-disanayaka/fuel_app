import 'package:flutter/material.dart';
import 'package:fuel_app/customer/home.dart';
import 'package:fuel_app/customer/station_find.dart';

class EndPage extends StatefulWidget {
  const EndPage({Key? key}) : super(key: key);

  @override
  _EndPageState createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/7.png',
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
                                    color: Color(0xffF7DA42)
                                ),
                                child: Icon(Icons.location_on_outlined)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13, right: 13),
                            child: InkResponse(
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EndPage()),
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
                      children:  [
                        SizedBox(height: 50,),
                        Text('You got fuel quota successful ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'MerriweatherSans',
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Arrival Time  :',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                            SizedBox(width: 10,),
                            Text('xx : xx',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Depart Time  : ',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                            SizedBox(width: 10,),
                            Text('xx : xx',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                        SizedBox(height: 120,),
                        Center(
                          child: InkResponse(
                            onHover: (value) {},
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );

                            },

                            child: Container(
                              height: 44,
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
                                child: Text('Thank You  come again...',
                                    style: TextStyle(
                                      fontFamily: 'MerriweatherSans',
                                      fontSize: 17,
                                      color: Colors.white,
                                    )),
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
