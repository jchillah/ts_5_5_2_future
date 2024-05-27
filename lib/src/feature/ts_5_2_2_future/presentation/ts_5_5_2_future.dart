import 'package:flutter/material.dart';

class TS552Future extends StatefulWidget {
  const TS552Future({super.key});

  @override
  TS522FutureState createState() => TS522FutureState();
}

class TS522FutureState extends State<TS552Future> {
  String text = "Go";

  Future<String> trippleString(String text) async {
    await Future.delayed(const Duration(seconds: 2));
    return text * 3;
  }

  void updateText() async {
    String newText = await trippleString("Go");
    setState(() {
      text = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: updateText,
                child: const Text('Tripple it!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
