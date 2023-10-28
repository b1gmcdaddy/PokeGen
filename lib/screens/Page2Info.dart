import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  
  final List<String> desc = [
    'Lucky Pokemon of the Day',
    'Unlucky Pokemon of the Day',
    'Fan-Favorite Pokemon',
    'Weakest Pokemon',
    'Message of the Day',
    'Submission'
  ];

  final List<String> inside = [
    'Muk',
    'Squirtle',
    'Pikachu / Charizard',
    'Magikarp',
    'Hi sir, manifesting 1.0 :)',
    'TANGPUZ, Jolony 17100437',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.0,
        title: Text(
          'Click cards to reveal info',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(desc.length, (index) {
          return GestureDetector(
            onTap: () {
              openModal(context, inside[index]);
            },
            child: Card(
              elevation: 20.0,
              margin: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: 150.0,
                height: 150.0,
                alignment: Alignment.center,
                padding: EdgeInsets.all(30.0),
                child: Text(
                  desc[index],
                  style: TextStyle(fontSize: 20.0, color: Colors.red[800]),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  void openModal(BuildContext context, String inside) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              inside,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        );
      },
    );
  }
}
