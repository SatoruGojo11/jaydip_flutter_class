import 'package:flutter/material.dart';

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Picker',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
      ),
      body: Center(

        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //   'Narutto :- ',
                  //   style: TextStyle(
                  //     fontSize: 30,
                  //     color: Colors.green,
                  //   ),
                  // ),
                  Expanded(
                    child: Image.asset(
                      'assets/image/NaruttoBayronMode.jpeg',
                      height: 500,
                      width: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       const Text(
            //         'Albert Enistein :- ',
            //         style: TextStyle(
            //           fontSize: 30,
            //           color: Colors.green,
            //         ),
            //       ),
            //       Expanded(
            //         child: Image.network(
            //           'https://imgs.search.brave.com/aqtp5o-WnRvJcd1Tk5hSaEOo4ncs0mH6xOOR6IWcL9Q/rs:fit:588:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5o/Y0h1Y3R2S1p0bWst/bktkcDNsRzJRSGFG/LSZwaWQ9QXBp',
            //           width: 50000,
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
