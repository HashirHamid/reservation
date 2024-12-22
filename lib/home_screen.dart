import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            const Text("Hello World!"),
            const Text("Hello World!123"),
            const Text("Hello World!456"),
            CupertinoButton(
                color: Colors.amber,
                onPressed: () {
                  setState(() {});
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text("Press me!"))
          ],
        ));
  }
}
