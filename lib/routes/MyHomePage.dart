import 'dart:html';

import 'package:flutter/material.dart';
import 'package:zong_app/constants/constants.dart';
import 'package:zong_app/routes/DetailsScreen.dart';
import 'package:zong_app/widgets/IconXLabelWidget.dart';
import 'package:zong_app/widgets/MyCard.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var myTopSection = Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "0313 1378515",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "0.28",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "PKR",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text(
                "Expires on 22nd Feb, 2024",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Recharge"),
                ),
                style: TextButton.styleFrom(
                  side: BorderSide(color: kMyColor),
                ),
              ),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 24,
                  ),
                  child: Text("Loan"),
                ),
                style: TextButton.styleFrom(
                  side: BorderSide(color: kMyColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    var myCardsSection = Container(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MyCard(
                title: "170",
                myIcon: Icons.wifi,
                subTitle: "MB",
                activeOffers: 2,
                progressValue: 0.3),
            MyCard(
                title: "0",
                myIcon: Icons.call,
                subTitle: "MINS",
                activeOffers: 0,
                progressValue: 0),
            MyCard(
                title: "5000",
                myIcon: Icons.message,
                subTitle: "SMS",
                activeOffers: 1,
                progressValue: 0.6),
            MyCard(
                title: "200",
                myIcon: Icons.cell_tower,
                subTitle: "MINS",
                activeOffers: 1,
                progressValue: 0.3),
          ],
        ),
      ),
    );
    var myBigCard = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: GridView.count(
        crossAxisCount: 4,
        children: List.generate(
          15,
          (index) => InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
            child: IconXLabelWidget(
              myIcons: kMyIcons.elementAt(index),
              myLabel: kMyIconsNames.elementAt(index),
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AoA, Attia!",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          MyIconButton(myIcon: Icons.notifications),
          MyIconButton(myIcon: Icons.search),
          MyIconButton(myIcon: Icons.refresh),
          MyIconButton(myIcon: Icons.menu),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kMyColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        backgroundColor: Colors.grey,
        elevation: 4,
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        items: List.generate(
          5,
          (index) => BottomNavigationBarItem(
            icon: Icon(kMyBottomNavIcons.elementAt(index)),
            label: kMyBottomNavLabels.elementAt(index),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            myTopSection,
            myCardsSection,
            Expanded(
              child: myBigCard,
            ),
          ],
        ),
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  IconData myIcon;

  MyIconButton({
    Key? key,
    required this.myIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsScreen(),
              ),
            );
          },
          icon: Icon(
            myIcon,
            color: Colors.white,
          )),
    );
  }
}
