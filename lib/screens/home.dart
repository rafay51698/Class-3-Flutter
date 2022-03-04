import 'package:flutter/material.dart';

import 'newpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //columns main axis allignment is top and bottom
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        //columns cross axis alignment is left to right
        // used to align the childrens to either righ side of column
        // or left side or center.
        crossAxisAlignment: CrossAxisAlignment.start,

        //row ki main and cross axis alignment is opposite to columns.

        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 30,
            width: 300,
            child: const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 30,
            width: 300,
            child: const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewPage(),
                ),
              );
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}

// we can also add asset image as a one of our childrens
// it is not necessary to create a class for it
// this was just for understanding.
class ForImages extends StatelessWidget {
  const ForImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Image.asset("assets/image1.jpg"),
      ),
    );
  }
}
