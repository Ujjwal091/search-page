// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: TextField(
          maxLength: 50,
          maxLines: 1,
          cursorColor: Color.fromARGB(100, 100, 100, 1),
          style: TextStyle(fontSize: 19, fontFamily: 'Serif'),

          onChanged: (value){
            print(value);
          },

          decoration: InputDecoration(
            
            counterText: '',
            filled: true,
            fillColor: Color.fromRGBO(240, 240, 240, 1),
            contentPadding: EdgeInsets.only(top: 3, left: 10),

            hintText: 'Search...',
            hintStyle: TextStyle(
              color: Color.fromRGBO(100, 100, 100, 1),
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide.none,
            )
          ),

        ),
      ),
    );
  }
}
