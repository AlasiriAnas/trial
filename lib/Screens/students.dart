import 'package:flutter/material.dart';

import '../Student_Card.dart';

class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(227, 227, 227, 1),
      appBar: AppBar(

        leading: const Padding(
          padding: EdgeInsets.fromLTRB(0,0,0,0),
          child: Icon(Icons.menu),
        ),
        title: const Text('Students'),
        actions: const [Padding(
          padding: EdgeInsets.fromLTRB(0,0,15,0),
          child: Icon(Icons.notifications),
        )],
        centerTitle: true,
        toolbarHeight: 220,
        backgroundColor: const Color.fromRGBO(3, 157, 143, 1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0))),
      ),
      body: const StudentCard(),
    );
  }
}
