import 'package:flutter/material.dart';
import 'person_card.dart';
import 'button.dart';
import 'headding.dart';

class NearbyBuddies extends StatelessWidget {
  final double height;
  final List<List<String>> person;

  const NearbyBuddies({
    super.key,
    required this.height,
    required this.person,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .43,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8),
      constraints: const BoxConstraints(minHeight: 350),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 22),
                child: const Headding(text: 'Nearby Buddies'),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: const Button(text: '    See More >    '),
              )
            ],
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 10),
            child: const Button(text: '    Common Passion    ', textColor: Colors.blue,),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: person.length,
              itemBuilder: (BuildContext context, int index){
                return PersonCard(url: person[index][2], name:person[index][0], passion: person[index][1]);
              },
            ),
          //   child: Row(
          //     children: [
          //       PersonCard(
          //         url: "https://www.jhu.edu/assets/uploads/2019/05/kale_thumb-500x500.jpg",
          //         name: 'Ujjwal jain',
          //         passion: 'Singing',
          //       ),
          //       PersonCard(
          //         name: 'Priya gupta',
          //         passion: 'Singing',
          //         url: "https://images.unsplash.com/photo-1674714865408-2b510940a34f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          //       ),
          //   ],
          // ),
          ),
        ],
      ),
    );
  }
}
