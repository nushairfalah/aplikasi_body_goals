import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  final List<String> images = [
    'assets/slider_1.png',
    'assets/slider_2.png',
    'assets/slider_3.png',
    'assets/slider_4.png',
  ];

  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 18,),
        Stack(
          children: [
            Container(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: _pageController,
                itemCount: images.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return _buildCarouselItem(images[index]);
                },
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: IconButton(
                onPressed: () {
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon : Icon(Icons.arrow_circle_left,color: Colors.black,size: 24,),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: IconButton(
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: Icon(Icons.arrow_circle_right,color: Colors.black,size: 24,),
              ),
            ),
            Positioned(
              bottom: 0,left: 0,right: 0,
              child:  _buildDots(),)
          ],
        ),
        SizedBox(height: 18,),
      ],
    );
  }

  Widget _buildCarouselItem(String imageUrl) {
    return FutureBuilder<ui.Image>(
      future: getImageDimensions(imageUrl),
      builder: (BuildContext context, AsyncSnapshot<ui.Image> snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.data != null) {
          double aspectRatio = snapshot.data!.width / snapshot.data!.height;
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / aspectRatio,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          );
        } else {
          // Return a placeholder or loading indicator while waiting for the image info
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            color: Colors.grey, // Adjust the color as needed
          );
        }
      },
    );
  }

  Future<ui.Image> getImageDimensions(String imageUrl) async {
    final Completer<ui.Image> completer = Completer<ui.Image>();
    final Image image = Image.asset(imageUrl);

    image.image.resolve(ImageConfiguration()).addListener(
      ImageStreamListener(
            (ImageInfo info, bool synchronousCall) {
          completer.complete(info.image);
        },
      ),
    );

    return completer.future;
  }


  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(images.length, (index) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
            color: currentIndex == index ? Colors.black : Colors.transparent,
          ),
        );
      }),
    );
  }
}