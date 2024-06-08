import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:timetable_app/component/lecture_box.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({super.key});

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  final InfiniteScrollController _controller = InfiniteScrollController();
  int currentIndex = 1;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateCurrentIndex);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateCurrentIndex);
    _controller.dispose();
    super.dispose();
  }

  void _updateCurrentIndex() {
    setState(() {

      // Calculate the new index using integer division
      int newCurrentIndex =
          (_controller.offset / (MediaQuery.of(context).size.height * 0.25))
              .round();

      // Only update if the index has actually changed
      if (newCurrentIndex != currentIndex) {
        currentIndex = newCurrentIndex;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: InfiniteCarousel.builder(
        controller: _controller,
        loop: false,
        axisDirection: Axis.vertical,
        itemCount: 3,
        itemExtent: MediaQuery.of(context).size.height * 0.25,
        center: true,
        itemBuilder: (context, itemIndex, realIndex) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final bool isCenterItem = itemIndex == currentIndex;
              final double scale = isCenterItem ? 1.2 : 1.0;
      
              return Center(
                child: Transform.scale(
                  scale: scale,
                  child: Padding(
                    padding: EdgeInsets.all(isCenterItem ? 10.0 : 5.0),
                    child: LectureBox(
                      isCenter: isCenterItem,
                      height:
                          constraints.maxHeight * (isCenterItem ? 1.2 : 1.0),
                      width: MediaQuery.of(context).size.width *
                          (isCenterItem ? 0.8 : 0.6),
                      lectureStatus: _getLectureStatus(itemIndex),
                      startTime: _getStartTime(itemIndex),
                      endTime: _getEndTime(itemIndex),
                      subject: _getSubject(itemIndex),
                      teacherInitials: _getTeacherInitials(itemIndex),
                      classroomNumber: _getClassroomNumber(itemIndex),
                    ),
                  ),
                ),
              );
            },
          );
        },
        scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            
            // Allows to swipe in web browsers
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse
          },
        ),
      ),
    );
  }

  String _getLectureStatus(int index) {
    switch (index) {
      case 0:
        return 'PREVIOUS LECTURE';
      case 1:
        return 'CURRENT LECTURE';
      case 2:
        return 'NEXT LECTURE';
      default:
        return 'FUTURE LECTURE';
    }
  }

  String _getStartTime(int index) {
    switch (index) {
      case 0:
        return '8:00 AM';
      case 1:
        return '9:00 AM';
      case 2:
        return '10:00 AM';
      default:
        return '11:00 AM';
    }
  }

  String _getEndTime(int index) {
    switch (index) {
      case 0:
        return '9:00 AM';
      case 1:
        return '10:00 AM';
      case 2:
        return '11:00 AM';
      default:
        return '12:00 PM';
    }
  }

  String _getSubject(int index) {
    switch (index) {
      case 0:
        return 'CDT';
      case 1:
        return 'FDS';
      case 2:
        return 'CAO';
      default:
        return 'DMS';
    }
  }

  String _getTeacherInitials(int index) {
    switch (index) {
      case 0:
        return 'DSW';
      case 1:
        return 'VBM';
      case 2:
        return 'VSG';
      default:
        return 'JSM';
    }
  }

  String _getClassroomNumber(int index) {
    switch (index) {
      case 0:
        return 'B301';
      case 1:
        return 'B301';
      case 2:
        return 'B107';
      default:
        return 'B203';
    }
  }
}
