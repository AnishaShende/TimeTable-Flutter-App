import 'package:flutter/material.dart';

class LectureBox extends StatelessWidget {
  const LectureBox(
      {super.key,
      required this.height,
      required this.width,
      required this.lectureStatus,
      required this.startTime,
      required this.endTime,
      required this.subject,
      required this.teacherInitials,
      required this.classroomNumber});

  final double height;
  final double width;
  final String lectureStatus;
  final String startTime;
  final String endTime;
  final String subject;
  final String teacherInitials;
  final String classroomNumber;

  @override
  Widget build(BuildContext context) {
    var color = lectureStatus == "PREVIOUS LECTURE"
        ? Colors.blue //const Color(0xFFFF5A5A)
        : lectureStatus == "CURRENT LECTURE"
            ? Colors.red
            : Colors.green;
    var fontSize = lectureStatus == "PREVIOUS LECTURE"
        ? 15.0
        : lectureStatus == "CURRENT LECTURE"
            ? 20.0
            : 15.0;
    return Container(
      height: height,
      width: width,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF7CDEFF)),
          borderRadius: BorderRadius.circular(19),
        ),
      ),
      // width: 347,
      // height: 153,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0001,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
            // width: 273,
            // height: 34,
            decoration: ShapeDecoration(
              color: const Color(0xFFF0F0F0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            child: Text(
              lectureStatus,
              style: TextStyle(
                color: color, // Color(0xFFFF5A5A),
                fontSize: fontSize,
                fontFamily: 'Sofia Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "$subject ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize + 5,
                  fontFamily: 'Sofia Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "($teacherInitials)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize + 5,
                  fontFamily: 'Sofia Sans',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                // width: 67,
                // height: 24,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF0F0F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: Text(
                  startTime, // '9:00 AM ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize - 5,
                    fontFamily: 'Sofia Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF0F0F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: Text(
                  classroomNumber,
                  style: TextStyle(
                    color: Color(0xFF001E8B),
                    fontSize: fontSize + 10,
                    letterSpacing: 1.5,
                    fontFamily: 'Sofia Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF0F0F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: Text(
                  endTime,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize - 5,
                    fontFamily: 'Sofia Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
