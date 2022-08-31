// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:to_do_list/Constants.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.myBlack,
      body: const Center(
        child: Text(
          'All Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
