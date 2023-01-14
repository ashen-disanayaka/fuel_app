import 'package:flutter/material.dart';
import 'package:fuel_app/customer/signin_customer.dart';



class Register_operater extends StatefulWidget {
  const Register_operater({Key? key}) : super(key: key);

  @override
  _Register_operaterState createState() => _Register_operaterState();
}

class _Register_operaterState extends State<Register_operater> {
  late DateTime dateTime;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  ListView(
        children: <Widget>[ Stack(
          children: [
            Image.asset('assets/img/registerhome.png',
              width: MediaQuery.of(context).size.width,

              fit: BoxFit.fill,
            ),

            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 250),
                child: Column(
                  children: [
                    Container(
                      height: 44,
                      width: 285,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.black,
                            hintText: "Search Your Dealers",hintStyle: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),

                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Select Province ",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Select District",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Select Location",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Email Address",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Contact Number",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),

                    SizedBox(height: 20,),


                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Fuel Arrival Time",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),
                        onTap: () async {
                          TimeOfDay? picked = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),

                          );
                        },
                        onChanged: (text) {
                          setState(() {
                            dateTime = DateTime.parse(text);
                          });
                        },

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Fuel Arrival Time",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),
                        onTap: () async {
                          TimeOfDay? picked = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),

                          );
                        },
                        onChanged: (text) {
                          setState(() {
                            dateTime = DateTime.parse(text);
                          });
                        },

                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Enter Diesel Capacity (L)",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Enter Petrol Capacity (L)",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 44,
                      width: 285,

                      child: TextFormField(

                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Enter Password",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),

                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
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
                          child: Text('Register',
                              style: TextStyle(
                                fontFamily: 'MerriweatherSans',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ],
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
