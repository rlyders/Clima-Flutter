import 'package:flutter/material.dart';
import '../location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('latitude: ${location.latitude}');
    print('longitude: ${location.longitude}');
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = '15';
    double myMarginAsADouble;

    try {
      myMarginAsADouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }

    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(myMarginAsADouble ?? 30.0),
      color: Colors.red,
    ));
  }
}
