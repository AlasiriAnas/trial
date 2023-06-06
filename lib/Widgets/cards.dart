import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Color textColor;
  final Color iconColor;
  final TextStyle fontType;
  final String image;
  final Color backgroundColor;
  final String studentName;
  final String schoolName;
  final String studentStatus;
  final String comment;
  final Icon topIcon;
  final String topIconText;
  final Icon bottomIcon;
  final String bottomIconText;
  final Color avatarColor;
  double elevation;
  void Function()? onTap;
  // double size;

   Cards({Key? key,
    required this.textColor,
    required this.iconColor,
    required this.avatarColor,
    required this.backgroundColor,
    // required this.size,
    required this.image,
    required this.elevation,
    required this.fontType,
    required this.studentName,
    required this.schoolName,
    required this.studentStatus,
    required this.comment,
    required this.topIcon,
    required this.topIconText,
    required this.bottomIconText,
    this.onTap,
    required this.bottomIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: backgroundColor,
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: elevation,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)),
      child:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Avatar and student Name section
              Positioned(

                top: 20,
                child: Column(
                  children: [
                    InkWell(

                        onTap: () {
                          //call the responding function here]
                          onTap;
                          print("button presses");
                        },
                        child: CircleAvatar(
                          backgroundColor:  avatarColor,
                          radius: 44,
                          child: CircleAvatar(

                            backgroundColor: Colors.cyan[100],
                            radius: 40,
                            backgroundImage: NetworkImage(image),
                            child:  image == null
                                ?  Text(

                              studentName[0],
                              style:  TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor),
                            )
                                : const SizedBox(
                              height: 0,
                              width: 0,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(studentName,style: fontType,),
                  ],
                ),
              ),

              //Student's status section
              Positioned(
                left: 30,
                child: Column(
                  children: [
                    Text(schoolName,style:fontType),
                    const SizedBox(height: 8),
                    Text(studentStatus,style:fontType),
                    const SizedBox(height: 8),
                    Text(comment,style:fontType),
                  ],
                ),
              ),

              // contentPadding: const EdgeInsets.all(40),

              //Buttons section
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          //call the responding function here]
                          onTap;
                          print("Button pressed");
                        },
                        child: const Icon(
                          Icons.call,
                          color: Color.fromRGBO(3, 157, 143, 1),

                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                        onTap: () {
                          //call the responding function here]
                          onTap;
                          print("Button pressed");
                        },
                        child: const Icon(
                          Icons.streetview,
                          color: Color.fromRGBO(3, 157, 143, 1),
                        )),
                  ],

                ),

              ),Column(
                  children:[
                    Text(topIconText),
                    const SizedBox(
                      height: 10,
                    ),Text(bottomIconText),

                  ]
              ),

            ]),
      ),

    );
  }
}
