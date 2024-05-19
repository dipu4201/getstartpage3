import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// class pageThree extends StatelessWidget {
//   const pageThree({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.lightBlue[100],
//         child: Center(
//           child: Text('GET START'),
//         ),
//     );
//   }
// }

class pageThree extends StatefulWidget {
  const pageThree({super.key});

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LottieBuilder.network(
                'https://lottie.host/7b49eb0b-482e-4531-976b-661010998be3/hQx6lLWp4y.json'),
            Text(
              'Welcome To App',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
