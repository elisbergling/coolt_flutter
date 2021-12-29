import 'package:coolt_flutter/constants/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image(
            width: 40,
            height: 40,
            fit: BoxFit.fitHeight,
            image: AssetImage('sergio-de-paula-c_GmwfHBDzk-unsplash-min.jpg'),
          ),
        ),
        title: Text('Babis Geber', style: TextStyle(color: white)),
        subtitle: Text('very cool person',
            style: TextStyle(color: white.withOpacity(0.7))),
      ),
    );
  }
}
