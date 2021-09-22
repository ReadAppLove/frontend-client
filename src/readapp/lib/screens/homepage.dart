import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/screens/explore.dart';
import 'package:readapp/widgets/volume_card.dart';

class HomepageScreen extends StatefulWidget{
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomepageScreenState();
}

class HomepageScreenState extends State<HomepageScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const VolumeCard(imageUrl: 'http://via.placeholder.com/120x170'),
            MaterialButton(
              child: const Text('Search'),
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExploreScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}