import 'package:flutter/material.dart';
import 'package:http_test/animated_opacity.dart';
import 'package:http_test/drawer.dart';
import 'package:http_test/form_validation.dart';
import 'package:http_test/method_channel.dart';
import 'package:http_test/my_animated_container.dart';
import 'package:http_test/orientation_builder.dart';
import 'package:http_test/snackbar.dart';
import 'package:http_test/swipe_to_dismiss.dart';
import 'package:http_test/tab_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fFlutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tutorial'),
        ),
        body: const Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('AnimatedContainer'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyAnimatedContainer()),
            );
          },
        ),
        ListTile(
          title: const Text('AnimatedOpacity'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyAnimatedOpacity()),
            );
          },
        ),
        ListTile(
          title: const Text('Drawer'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyDrawer()),
            );
          },
        ),
        ListTile(
          title: const Text('SnackBar'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MySnackBar(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('화면 방향에 따른 처리'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyOrientationBuilder(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('TabController'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyTapController(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Form Validation'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyFormValidation(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Swipe To Dismiss'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MySwipeToDismiss(),
              ),
            );
          },
        ),ListTile(
          title: const Text('MethodChannel'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyMethodChannel(),
              ),
            );
          },
        ),
      ],
    );
  }
}
