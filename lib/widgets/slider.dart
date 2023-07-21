import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:news_app/utils/color_constant.dart';

// ignore: must_be_immutable
class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  int _currentIndex = 0;
  List<String> imageUrls = [
    'https://img.freepik.com/free-vector/realistic-news-studio-background_52683-103246.jpg?size=626&ext=jpg&ga=GA1.2.664010107.1681112418&semt=ais',

    'https://img.freepik.com/free-vector/technology-background-with-earth-circuit-diagram_1017-19385.jpg?size=626&ext=jpg&ga=GA1.2.664010107.1681112418&semt=ais',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            enableInfiniteScroll: true,
            autoPlay: true,
            viewportFraction: 1.0,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
            // Remove the dot related properties from here
          ),
          items: imageUrls.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageUrls.map((url) {
            int index = imageUrls.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? ColorConstant.black9007f
                    : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
