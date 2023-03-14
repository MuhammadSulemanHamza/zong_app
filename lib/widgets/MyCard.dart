import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../routes/DetailsScreen.dart';

class MyCard extends StatelessWidget {
  final title;
  final myIcon;
  final subTitle;
  final activeOffers;
  final progressValue;

  const MyCard(
      {super.key,
      required this.title,
      required this.myIcon,
      required this.subTitle,
      required this.activeOffers,
      required this.progressValue});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 150,
      width: 105,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailsScreen(),
            ),
          );
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                myIcon,
                color: kMyColor,
                size: 32,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "remaining",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: LinearProgressIndicator(
                  value: progressValue,
                  color: Colors.pink,
                  backgroundColor: Colors.pink[100],
                ),
              ),
              Text(
                "$activeOffers offers active",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
