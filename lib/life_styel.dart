import 'package:flutter/material.dart';
import 'headding.dart';
import 'button.dart';

class LifeStyle extends StatelessWidget {
  final double height;
  const LifeStyle({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.10,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 8),
      constraints: const BoxConstraints(
        minHeight: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children:[
          Container(
            margin: const EdgeInsets.only(top: 10, left: 22),
            child: const Headding(text: 'Life Style'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Button(text: '    Men    ', textColor: Colors.blue,),
                Button(text: '    Women    '),
                Button(text: '    Beauty & Grooming    ',)
              ],
            ),
          )
        ],
      ),
    );
  }
}
