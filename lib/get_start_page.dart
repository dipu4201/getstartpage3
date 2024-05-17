import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getstartpage/all_Screen/page1.dart';
import 'package:getstartpage/all_Screen/page2.dart';
import 'package:getstartpage/all_Screen/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class getStartPage extends StatefulWidget {
  const getStartPage({super.key});
  @override
  State<getStartPage> createState() => _getStartPageState();
}

class _getStartPageState extends State<getStartPage> {
  PageController _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              pageOne(),
              pageTwo(),
              pageThree(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    _controller.nextPage(duration: Duration(microseconds: 500),
                        curve: Curves.easeIn,
                    );
                  },
                  child: Text('SKIP'),),
                SmoothPageIndicator(controller: _controller, count: 3),
                GestureDetector(
                  onTap:(){},
                  child: Text('NEXT'),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
