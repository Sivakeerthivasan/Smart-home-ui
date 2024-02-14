import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          const SizedBox(height: 20),

          //Welcome keerthivasan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Home"),
                Text(
                  "Hello Keerthivasan",
                  style: TextStyle(fontSize: 40),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),

          //smart device +grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text('Smart Devices'),
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          )
        ]),
      ),
    );
  }
}
