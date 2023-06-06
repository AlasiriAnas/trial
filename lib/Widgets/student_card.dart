import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './cards.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({Key? key}) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  List students = [
    {
      "Name": "Anas",
      "School_Name": "KFUPM",
      "Status": "10 Minutes till pickup",
      "Image":
          "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"
    },
    {
      "Name": "Adam",
      "School_Name": "KFUPM2",
      "Status": "5 Minutes till pickup",
      "Image":
          "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"
    },
    {
      "Name": "Mohammad",
      "School_Name": "KFUPM3",
      "Status": "13 Minutes till pickup",
      "Image": "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"
    },
    {
      "Name": "Ali",
      "School_Name": "KFUPM4",
      "Status": "2 Minutes till pickup",
      "Image": ""
    },
  ];

  @override
  Widget build(BuildContext context) {
        ImageProvider imageProvider ;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(227, 227, 227, 1),
        body: SafeArea(
            child: ListView.builder(

                padding: const EdgeInsets.all(20.0),
                itemCount: students.length,
                itemBuilder: (context, i) {
                  // ImageProvider imageProvider = students[i]['Image'];
                  return Cards(
                    textColor: Colors.black87,
                    iconColor: const Color.fromRGBO(3, 157, 143, 1),
                    fontType: GoogleFonts.roboto(),
                    image: students[i]['Image'],
                    schoolName: students[i]['School_Name'],
                    backgroundColor: const Color.fromRGBO(249, 249 , 249, 1),
                    studentName: students[i]['Name'],
                    studentStatus: students[i]['Status'],
                    comment: "Bordered",
                    topIcon: const Icon(
                      Icons.call,
                      color: Color.fromRGBO(3, 157, 143, 1)),
                    topIconText:"Call\nDriver",
                    bottomIcon:const Icon(
                      Icons.streetview,
                      color: Color.fromRGBO(3, 157, 143, 1)),
                    bottomIconText:"View\nStreet",
                    avatarColor:const Color.fromRGBO(175 , 175, 175, 1),
                    elevation: 20);
                })));
  }
}
