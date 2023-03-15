import 'package:flutter/material.dart';
import 'headding.dart';

class NearbyStores extends StatelessWidget{

  final double height;

  const NearbyStores({
    super.key,  
    required this.height,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: height * 0.30,
      color: Colors.white,

      constraints: const BoxConstraints(
        minHeight: 240,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Container(
            margin: const EdgeInsets.only(left: 22, top: 10),
            child: const Headding(text: 'Nearby Stores')
          ),

          Expanded(
            child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromRGBO(241, 179, 179, 1),
              ),
            ),
          ),
          
        ],
      ),   
    );
  }
}