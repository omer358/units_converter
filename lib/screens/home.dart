import 'package:flutter/material.dart';
import 'package:units_converter/screens/converter.dart';

class Home extends StatelessWidget {
  final properties = {
    "Length": "resources/images/length.png",
    "Area": "resources/images/area.png",
    "volume": "resources/images/volume.png",
    "Time": "resources/images/time.png",
    "Temperature": "resources/images/temperature.png",
    "Speed": "resources/images/speed.png",
    "Mass": "resources/images/mass.png",
    "Force": "resources/images/force.png",
    "Numeral": "resources/images/num_systems.png",
    "Pressure": "resources/images/pressure.png",
    "Energy": "resources/images/energy.png",
    "Power": "resources/images/power.png",
    "Angels": "resources/images/angles.png",
    "Digital Data": "resources/images/data.png",
  };
  Home({Key? key}) : super(key: key);
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
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: const Text("Basic quantities",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    background: Image.asset(
                      'resources/images/units.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: unitsWidgets(properties),
          ),
        ),
      ),
    );
  }

  List<Widget> unitsWidgets(properties) {
    List<Widget> units = List.empty(growable: true);
    for (var property in properties.entries) {
      units.add(Container(
          margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  property.value,
                  color: Colors.white,
                  height: 40,
                  width: 40,
                ), // icon
                Text(
                  property.key,
                  style: const TextStyle(fontSize: 15),
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
          )));
    }
    return units;
  }
}
