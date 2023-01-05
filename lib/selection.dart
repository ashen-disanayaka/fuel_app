import 'package:flutter/material.dart';
import 'package:fuel_app/customer/signin_customer.dart';
import 'package:fuel_app/fuel_Operater/signin_operater.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Image.asset('assets/img/2.png',
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Column(

              children: [
                Center(
                  child: InkResponse(
                    onHover: (value) {},
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signin_customer()),
                      );
                    },

                    child: Container(
                      height: 44,
                      width: 264,
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
                        child: Text('Fuel customer',
                            style: TextStyle(
                              fontFamily: 'MerriweatherSans',
                              fontSize: 20,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),

                ),
                SizedBox(height: 20,),
                Center(
                  child: InkResponse(
                    onHover: (value) {},
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signin_operater()),
                      );
                    },

                    child: Container(
                      height: 44,
                      width: 264,
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
                        child: Text('fuel operator',
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
          ),
        ],
      ),
    );
  }
}
