import 'package:flutter/material.dart';
import 'package:gpio_relay/src/gpio_relay_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Creating an instance of the class and assigning it to the variable.
    final GpioRelayOne gpioRelayOne = GpioRelayOne();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('GPIO Relay'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ledOneOnElevatedButton(),
            SizedBox(
              height: 20.0,
            ),
            ledOneOffElevatedButton(),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  } //Widget ends

  Widget ledOneOnElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          // TBD
        });
      },
      child: Text(
        'LED On',
        style: TextStyle(fontSize: 12.0, color: Colors.black),
      ),
    );
  }

  Widget ledOneOffElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          // TBD
        });
      },
      child: Text(
        'LED Off',
        style: TextStyle(fontSize: 12.0, color: Colors.black),
      ),
    );
  }
} //class ends
