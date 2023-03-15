import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  double width = 0;

  final String url;
  final String passion;
  final String name;

  PersonCard({
    super.key,
    required this.url,
    required this.name,
    required this.passion,
  });

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    String name = '';
    if (this.name.length < 11) {
      name = this.name;
    } else {
      name = this.name.substring(0, 8);
      name = "$name ...";
    }

    return InkWell(
      onTap: () {
        print("Card Clicked");
      },
      child: Container(
        
        width: width * 0.47,
        margin: const EdgeInsets.all(5),

        child: Stack(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.white.withAlpha(0),
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black54,
                ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, bottom: 5),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: Checkbox.width * 0.85,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  padding: const EdgeInsets.only(left: 4, right: 4, bottom: 2),
                  margin: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    passion,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}