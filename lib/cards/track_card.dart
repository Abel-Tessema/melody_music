import 'package:flutter/material.dart';
import 'package:melody_music/widgets/scrollable_text.dart';

class TrackCard extends StatelessWidget {
  const TrackCard({super.key});

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
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    width: 50,
                    image: AssetImage('images/Olivia O\'Brien.jfif'),
                    fit: BoxFit.cover,
                  ),
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
                        SizedBox(
                          width: screenWidth * 0.7,
                          height: 20,
                          child: ScrollableText('What Happens Now?'),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          width: screenWidth * 0.7,
                          height: 20,
                          child: ScrollableText(
                            'Olivia O\'Brien',
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Icon(Icons.more_vert),
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