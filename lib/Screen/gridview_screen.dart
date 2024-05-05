import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final String name = "chewan"; // Replace with actual name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Grid')),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
          name.length,
          (index) => MyButton(name, index + 1),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  final String name;
  final int buttonNumber;

  MyButton(this.name, this.buttonNumber);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  Color buttonColor = Colors.blue;
  bool isVisible = true;
  bool wasClicked = false; // Track if the button was clicked before

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (!wasClicked) {
              buttonColor = Colors.green; // Change color on initial click
              wasClicked = true;
            } else {
              isVisible = !isVisible; // Hide button on second click
            }
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: Colors.white,
        ),
        child: Text(
          widget.name[widget.buttonNumber - 1],
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
