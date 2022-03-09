import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Units converter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Units Converter"),
        ),
        body: GridView.count(
          shrinkWrap: true,
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: [
            unitsWidgets("Time", Icons.date_range, () {}),
            unitsWidgets("Mass", Icons.balance_rounded, () {}),
            unitsWidgets("Volume", Icons.water, () {}),
            unitsWidgets("Length", Icons.view_array_sharp, () {}),
            unitsWidgets("Area", Icons.area_chart, () {}),
            unitsWidgets("Speed", Icons.speed, () {}),
            unitsWidgets("Temperature", Icons.thermostat_rounded, () {}),
            unitsWidgets(
                "Electricity", Icons.electrical_services_rounded, () {}),
            unitsWidgets("Distance", Icons.social_distance, () {}),
            unitsWidgets("DTR", Icons.wifi_protected_setup_outlined, () {}),
          ],
        ),
      ),
    );
  }

  Container unitsWidgets(label, icon, onPressed) {
    return Container(
        margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: TextButton(
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 35,
              ), // icon
              Text(
                label,
                style: const TextStyle(fontSize: 14),
              ), // text
            ],
          ),
          style: TextButton.styleFrom(
            elevation: 4.0,
            primary: Colors.white,
            backgroundColor: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ));
  }
}
