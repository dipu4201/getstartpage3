import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// class pageTwo extends StatelessWidget {
//   const pageTwo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.deepPurple[100],
//         child: Center(
//         child: Text('SCROLLING APP'),)
//     );
//   }
// }
class pageTwo extends StatefulWidget {
  const pageTwo({super.key});

  @override
  State<pageTwo> createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LottieBuilder.network(
              'https://lottie.host/55c98e82-0d71-4fec-b59a-d1701ef3178c/kkFY9q1frY.json',
            ),
            Text(
              'Scrolling this App',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
