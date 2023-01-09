import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  State<MySnackBar> createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MySnackBar'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('SnackBar'),
                  action: SnackBarAction(
                    label: '취소',
                    onPressed: () {},
                  ),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: const Text('SnackBar Button'),
            ),
          );
        },
      ),
    );
  }
}
