import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'component/carousel_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.07,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: width * 0.1,
              height: height * 0.2,
              padding: const EdgeInsets.symmetric(vertical: 8.33),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_outlined),
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  // width: width * 0.7,
                  child: Text(
                    '9:17 AM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                      fontFamily: 'Sofia Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  // width: width * 0.6,
                  child: Text(
                    'SUN, SEPT 17',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontFamily: 'Sofia Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: width * 0.1,
              height: height * 0.2,
              padding: const EdgeInsets.symmetric(vertical: 8.33),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.05,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: const CarouselView(),
        ),
      ],
    );
  }
}
