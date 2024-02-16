import 'package:flutter/material.dart';
import 'package:smart_home_ui/util/smart_device_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List mySmartDevices = [
    ["Smart Light", "lib/icons/light-bulb.png", false],
    ["Smart Ac", "lib/icons/air-conditioner.png", false],
    ["Smart Tv", "lib/icons/smart-tv.png", false],
    ["Smart Fan", "lib/icons/fan.png", true],
  ];

  //powerSwitchChanged

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //custom app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //menu icon
                Image.asset(
                  'lib/icons/menu.png',
                  height: 45,
                  color: Colors.grey[800],
                ),

                //acc  icon
                Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.grey[800],
                )
              ],
            ),
          ),
          const SizedBox(height: 0),

          //Welcome keerthivasan
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Home",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Vasan ",
                  style: TextStyle(fontSize: 50),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),

          //smart device +grid
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Smart Devices',
              style: TextStyle(fontSize: 20),
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: mySmartDevices.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.2),
              itemBuilder: (context, index) {
                return SmartDeviceBox(
                  smartDeviceName: mySmartDevices[index][0],
                  iconPath: mySmartDevices[index][1],
                  powerOn: mySmartDevices[index][2],
                  onChanged: (value) => powerSwitchChanged(value, index),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
