import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String sensorData = "No Data";
  String generatedWord = "Awaiting Input";

  // Mock method to simulate sensor data
  void simulateSensorData() {
    setState(() {
      sensorData = "EMF: ${5 + (10 * (1 - (DateTime.now().second % 2)))} μT";
      generatedWord = ["Hello", "World", "Flutter", "Paranormal"].toList()[
      DateTime.now().second % 4];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GLITCHvox'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: const Text('Sensor Data'),
                subtitle: Text(sensorData),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                title: const Text('Generated Word'),
                subtitle: Text(generatedWord),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: simulateSensorData,
              child: const Text('Simulate Data'),
            ),
          ],
        ),
      ),
    );
  }
}
