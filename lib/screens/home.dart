import 'package:flutter/material.dart';
import 'package:units_converter/screens/converter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: const Text("Basic Units",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    background: Image.asset(
                      'images/units.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Center(
            child: GridView.count(
              shrinkWrap: true,
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 3,
              // Generate 100 widgets that display their index in the List.
              children: [
                unitsWidgets("Time", Icons.date_range, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Converter())));
                }),
                unitsWidgets("Mass", Icons.balance_rounded, () {}),
                unitsWidgets("Volume", Icons.water_drop, () {}),
                unitsWidgets("Length", Icons.view_array_sharp, () {}),
                unitsWidgets("Area", Icons.area_chart, () {}),
                unitsWidgets("Speed", Icons.speed, () {}),
                unitsWidgets("Temperature", Icons.thermostat_rounded, () {}),
                unitsWidgets("Electricity", Icons.electrical_services, () {}),
                unitsWidgets("Distance", Icons.social_distance, () {}),
                unitsWidgets("DTR", Icons.wifi_protected_setup_outlined, () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container unitsWidgets(label, icon, onPressed) {
    return Container(
        margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
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
