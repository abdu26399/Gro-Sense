import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:gro_sense/model/user_model.dart';


class TaskCardWidget extends StatelessWidget {
  // final String priority;
  final String title;
  final String description;

  const TaskCardWidget(
      {Key? key,
      // required this.priority,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 26.0,
      ),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //     priority,
          //     style: TextStyle(
          //       color: Color(0xFFFF0000),
          //       fontSize: 14.0,
          //       fontWeight: FontWeight.w600,
          //     ),
          //   ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
            ),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
                height: 1.0,
                color: Color(0xFFA8A8A8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  // const TodoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(
              right: 12.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFEF200),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Image(
              image: AssetImage('assets/images/check.png'),
            ),
            padding: EdgeInsets.all(5.0),
          ),
          Text(
            "This is gonna edit",
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
