import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget{
  final double height;
  const SearchButton({
    super.key,
    required this.height
  });

  @override
  Widget build(BuildContext context){
    return IconButton(
          onPressed: null,
          icon: const Icon(Icons.search, color: Colors.black,),
          iconSize: height * 0.05,
    );
  }
}