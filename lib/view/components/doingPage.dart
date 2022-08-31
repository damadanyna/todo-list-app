// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DoingPage extends StatefulWidget {
  const DoingPage({Key? key}) : super(key: key);

  @override
  State<DoingPage> createState() => _DoingPageState();
}

class _DoingPageState extends State<DoingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Doing Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
