import 'package:flutter/material.dart';
import 'package:fuel_app/customer/home.dart';
import 'package:fuel_app/customer/register_customer.dart';
import 'package:fuel_app/customer/station_find.dart';

class Signin_customer extends StatefulWidget {
  const Signin_customer({Key? key}) : super(key: key);

  @override
  _Signin_customerState createState() => _Signin_customerState();
}

class _Signin_customerState extends State<Signin_customer> {
  final _formKey = GlobalKey<FormState>();
  // Create controllers for the email and password TextFields
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String password;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/img/3.png',
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              fit: BoxFit.fill,

            ),

            Padding(
              padding:  const EdgeInsets.only(top: 280),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      width: 264,

                      child: TextFormField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Enter Email Address",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 264,

                      child: TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          fillColor: Colors.black,
                          hintText: "Enter Password",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),

                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                        onSaved: (value) => password = value!,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 30,),

                    Center(
                      child: InkResponse(
                        onHover: (value) {},
                        onTap: (){
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, perform the login
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StationFind()),
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
                            child: Text('Login',
                                style: TextStyle(
                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 20,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),

                    ),
                    TextButton(
                      onHover: (value) {},
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Register_Custo() ),
                        );
                      },
                      child:  const Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    TextButton(
                      onHover: (value) {},
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Register_Custo() ),
                        );
                      },
                      child: const Text(
                        'Register here',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
