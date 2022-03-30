import 'package:flutter/material.dart';
import 'package:units_converter/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: ((context) => Home()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'resources/images/mass.png',
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'resources/images/time.png',
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'resources/images/length.png',
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 35,
                    height: 35,
                  ),
                ],
              ),
              const SizedBox(height: 10),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'resources/images/force.png',
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'resources/images/pressure.png',
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'resources/images/speed.png',
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 35,
                    height: 35,
                  ),
                ],
              ),
              const SizedBox(height: 15,),
          Text(
            "Units Converter",
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          Text(
            "Convert between units of measurement",
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
          )
        ],
      ),
    ));
  }
}
