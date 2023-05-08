import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderApp extends StatefulWidget {
  const SliderApp({Key? key}) : super(key: key);

  @override
  State<SliderApp> createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {
  var slide = 0.0;
  double _progressValue = 0.5;

  List imagelist = [
    "https://wallpapercave.com/wp/wp3703403.jpg",
    "https://pict.sindonews.net/dyn/850/pena/news/2022/08/03/700/844707/10-karakter-film-marvel-ini-sangat-benci-pada-iron-man-bfl.jpg",
    "https://i.ytimg.com/vi/CTFWCFIxLDU/maxresdefault.jpg",
    "https://images.entertainment.ie/uploads/2020/05/12140859/Iron-Man-2.jpg?w=640&h=384&q=high",
    "https://cloudfront-us-east-1.images.arcpublishing.com/copesa/MZGGX7HRMJFGRDR4TQ2JIIFVSY.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWzgbeGz3-r9QwCm_exBqvxtHz8j9i-3Mpuw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIuC8NaWGFjVOq_qlOAMz3PgXXBllg6QZOrA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQch57CZio_KS3wsGwL-PoJmc0aM7IdRrWWDqFE5TqPAXYO2U2RgeO40yYtERYUvaW0stM&usqp=CAU",
    "https://images.hdqwalls.com/download/responsibilities-of-iron-man-lw-1920x1080.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8DIy_xgxtK2ej7C7XMO0wLnZUSFRdntxngWARcSToV9IBP_1xcQT4AkF7xJzreIodlOg&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),

      /*  //  Topic - 1 => Slider
      body: Slider(
          value: slide,
          min: 0.0,
          max: 10.0,
          divisions: 5,
          inactiveColor: Colors.black87,
          activeColor: Colors.red,
          label: slide.round().toString(),

          onChanged: (value) {
            print(value);
            setState(() {
              slide = value;
            });
          }),
      */

      /* //  Topic - 2 =>  Progress
      // body: Column(
      //   children: [
      //     SizedBox(height: 30),
      //     LinearProgressIndicator(
      //       backgroundColor: Colors.purpleAccent,
      //       minHeight: 8.0,
      //       valueColor: new AlwaysStoppedAnimation<Color>(Colors.yellow),
      //       value: _progressValue,
      //     ),
      //     SizedBox(height: 20),
      //     Text('${(_progressValue*10).round()}%'),
      //   ],
      // ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     SizedBox(height: 30),
      //     Center(
      //       child: CircularProgressIndicator(
      //         backgroundColor: Colors.red,
      //         strokeWidth: 10.0,
      //         valueColor: new AlwaysStoppedAnimation<Color>(Colors.yellow),
      //         value: _progressValue,
      //       ),
      //     ),
      //     SizedBox(height: 20),
      //     Text('${(_progressValue*10).round()}%'),
      //   ],
      // ),
      */

      // /* // Topic - 3 => Carousel Slider
      body: Center(
        child: CarouselSlider(
            items: imagelist.map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          e,
                          width: 1000,
                          height: 1000,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ).toList(),
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true,
            ),
        ),
      ),
      // */
    );
  }
}
