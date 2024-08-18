import 'package:flutter/material.dart';
import 'package:melody_music/widgets/scrollable_text.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.031, vertical: 15),
      child: SizedBox(
        width: screenWidth * 0.27,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage('images/Olivia O\'Brien.jfif'),
                width: screenWidth * 0.27,
              ),
            ),
            SizedBox(height: 10),
            ScrollableText(
              'Episodes: Season 1',
              fontSize: 16,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: screenWidth * 0.27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScrollableText(
                        'Olivia O\'Brien',
                        color: Colors.grey,
                        fontSize: 14,
                        screenWidthPercentage: 0.21,
                        height: 15,
                      ),
                      ScrollableText(
                        '6 songs',
                        color: Colors.grey,
                        fontSize: 14,
                        screenWidthPercentage: 0.21,
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
