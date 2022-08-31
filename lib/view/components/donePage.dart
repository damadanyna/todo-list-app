// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DonePage extends StatefulWidget {
  const DonePage({Key? key}) : super(key: key);

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Donnepages',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
