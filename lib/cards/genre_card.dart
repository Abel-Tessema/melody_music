import 'package:flutter/material.dart';
import 'package:melody_music/widgets/scrollable_text.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.031, vertical: 15),
      child: SizedBox(
        width: screenWidth * 0.438,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage('images/Olivia O\'Brien.jfif'),
                width: screenWidth * 0.438,
              ),
            ),
            SizedBox(height: 10),
            ScrollableText(
              'Alternative/Indie',
              screenWidthPercentage: 0.438,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: screenWidth * 0.438),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScrollableText(
                        '40 songs',
                        fontSize: 14,
                        color: Colors.grey,
                        screenWidthPercentage: 0.37,
                        height: 15,
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
