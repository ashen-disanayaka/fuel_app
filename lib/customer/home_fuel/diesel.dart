import 'package:flutter/material.dart';

class Desal extends StatefulWidget {
  const Desal({Key? key}) : super(key: key);

  @override
  _DesalState createState() => _DesalState();
}

class _DesalState extends State<Desal> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 350,
      height: 120,
      decoration: const BoxDecoration(
        color: Color(0xffF7DA42),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 30),
            child: Row(
              children: const [
                Text(
                  '657',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                SizedBox(width: 10,),
                Text(
                  'L',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                Text(
                  'iters',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                SizedBox(width: 100,),
                Text(
                  'Diesel',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
          const Text('fuel arrival time :',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
