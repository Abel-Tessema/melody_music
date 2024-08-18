import 'package:flutter/material.dart';
import 'package:melody_music/widgets/scrollable_text.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image(
                  width: 50,
                  image: AssetImage('images/Olivia O\'Brien.jfif'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ScrollableText(
                          'Olivia\'s Songs',
                          screenWidthPercentage: 0.5,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ScrollableText(
                          '40 songs',
                          color: Colors.grey,
                          fontSize: 14,
                          screenWidthPercentage: 0.17,
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
