import 'package:flutter/material.dart';
import '../widgets/scrollable_text.dart';

class FolderCard extends StatelessWidget {
  const FolderCard({super.key});

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
                    semanticLabel: 'abcd',
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
                        ScrollableText(
                          'Olivia O\'Brien - Episodes: Season 1 (320 kbps)',
                          screenWidthPercentage: 0.65,
                        ),
                        SizedBox(height: 5),
                        ScrollableText(
                          'SD Card/Music/Olivia O\'Brien/',
                          color: Colors.grey,
                          fontSize: 14,
                          screenWidthPercentage: 0.65,
                          height: 15,
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
