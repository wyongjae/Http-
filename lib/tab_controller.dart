import 'package:flutter/material.dart';

class MyTapController extends StatefulWidget {
  const MyTapController({Key? key}) : super(key: key);

  @override
  State<MyTapController> createState() => _MyTapControllerState();
}

class _MyTapControllerState extends State<MyTapController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabController'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.alarm)),
              Text('Tab2'),
              Text('Tab3'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.alarm),
            Center(child: Text('Tab2')),
            Center(child: Text('Tab3')),
          ],
        ),
      ),
    );
  }
}
