import 'package:flutter/material.dart';

class LectureBox extends StatelessWidget {
  const LectureBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 21,
      top: 450,
      child: SizedBox(
        width: 347,
        height: 153,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 347,
                height: 153,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF7CDEFF)),
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 37,
              top: 8,
              child: SizedBox(
                width: 273,
                height: 34,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 273,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF0F0F0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 52,
                      top: 5,
                      child: Text(
                        'CURRENT LECTURE',
                        style: TextStyle(
                          color: Color(0xFFFF5A5A),
                          fontSize: 20,
                          fontFamily: 'Sofia Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 27,
              top: 112,
              child: SizedBox(
                width: 67,
                height: 24,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 67,
                        height: 24,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF0F0F0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 12,
                      top: 5,
                      child: Text(
                        '9:00 AM ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Sofia Sans',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 254,
              top: 112,
              child: SizedBox(
                width: 67,
                height: 24,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 67,
                        height: 24,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF0F0F0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 12,
                      top: 5,
                      child: Text(
                        '10:00 AM ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Sofia Sans',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 174,
              top: 52,
              child: Text(
                '(VBM)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'Sofia Sans',
                  fontWeight: FontWeight.w200,
                  height: 0,
                ),
              ),
            ),
            const Positioned(
              left: 89,
              top: 52,
              child: Text(
                'FDS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'Sofia Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 114,
              top: 100,
              child: SizedBox(
                width: 120,
                height: 48,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 2,
                      child: Container(
                        width: 120,
                        height: 44,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF0F0F0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 16,
                      top: 0,
                      child: Text(
                        'B301',
                        style: TextStyle(
                          color: Color(0xFF001E8B),
                          fontSize: 40,
                          fontFamily: 'Sofia Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
