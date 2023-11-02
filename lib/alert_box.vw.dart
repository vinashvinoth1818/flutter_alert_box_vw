import 'package:flutter/material.dart';

class AlertBox extends StatefulWidget {
  const AlertBox({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Alert Dialog Box",
          style: TextStyle(
            color: Colors.white,
          ),
        ),

      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Alert Dialog Box"),
                  content:Text("You have raised a Alert Dialog Box"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("okay"),

                      ),
                    ),
                  ],
                ),
              );
            },
            child: const Text("Show alert Dialog box"),
          ),
        ),
      ),
    );
  }
}
