import 'package:flutter/material.dart';
import 'search_button.dart';
import 'search_bar.dart';


class SearchTab extends StatelessWidget{
  final double height;

  const SearchTab({
    super.key,
    required this.height
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: height * 0.08,
      constraints: const BoxConstraints(
        minHeight: 60,
      ),
      margin: const EdgeInsets.only(bottom: 2),
      child: Row(
        children: [
          SearchButton(height: height),
          const SearchBar(),
        ],
      ),
    );
  }
  
}