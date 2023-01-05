import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/customer/signin_customer.dart';

class Register_Custo extends StatefulWidget {
  const Register_Custo({Key? key}) : super(key: key);

  @override
  _Register_CustoState createState() => _Register_CustoState();
}

class _Register_CustoState extends State<Register_Custo> {
  String dropdownValue1 = 'Select your vehicle';
  String dropdownValue2 = 'Select Fuel';

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

              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 280),
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
                                  hintText: "Search Your Location ",hintStyle: TextStyle(fontWeight: FontWeight.w900,fontSize: 19),

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
                              hintText: "First Name",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

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
                              hintText: "Last Name",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

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
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(15),

                          ),
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: [
                              DropdownButton<String>(
                                value: dropdownValue1,
                                icon: Icon(Icons.keyboard_arrow_down_rounded),
                                iconSize: 35,
                                elevation: 16,
                                hint:  const Padding(
                                  padding: EdgeInsets.only(right: 80),
                                  child: Text('Select Vehicle', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19)),
                                ),
                                style: TextStyle(color: Colors.black87),
                                underline: Container(
                                  height: 2,

                                ),
                                onChanged:  (String? newValue1) {
                                  setState(() {
                                    dropdownValue1 = newValue1!;
                                  });
                                },
                                items: <String>['Select your vehicle', 'BICK', '3WHEEL', 'CAR','VAN','LORRY','LAND VEHICLE']
                                    .map<DropdownMenuItem<String>>((String value1) {
                                  return DropdownMenuItem<String>(
                                    value: value1,
                                    child: Text(value1),
                                  );
                                }).toList(),
                                                             ),
                            ],
                          ),

                        ),
                        SizedBox(height: 20,),
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
                                value: dropdownValue2,
                                icon: Icon(Icons.keyboard_arrow_down_rounded),
                                iconSize: 35,
                                elevation: 16,
                                hint:  const Padding(
                                  padding: EdgeInsets.only(right: 106),
                                  child: Text('Select Fuel', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19)),
                                ),
                                style: TextStyle(color: Colors.black87),
                                underline: Container(
                                  height: 2,

                                ),
                                onChanged:  (String? newValue2) {
                                  setState(() {
                                    dropdownValue2 = newValue2!;
                                  });
                                },
                                items: <String>['Select Fuel','PETROL', 'DIESEL', ]
                                    .map<DropdownMenuItem<String>>((String value2) {
                                  return DropdownMenuItem<String>(
                                    value: value2,
                                    child: Text(value2),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),

                        ),
                        SizedBox(height: 10,),
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
                        Container(
                          height: 44,
                          width: 285,

                          child: TextFormField(

                            decoration: InputDecoration(
                              fillColor: Colors.black,
                              hintText: "Conform Password",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                            ),

                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
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
