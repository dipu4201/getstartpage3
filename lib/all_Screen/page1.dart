import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// class pageOne extends StatelessWidget {
//   const pageOne({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.pink[100],
//       child:
//       Center(
//         child: Lottie.network('https://asset-cdn.lottiefiles'),
//         Text('WELLCOME TO DELOWER APP'),
//       ),
//     );
//     // return Scaffold(
//     //   body: Center(
//     //     child: Lottie.network('https://asset-cdn.lottiefiles'),
//     //   )
//     // );
//   }
// }
class pageOne extends StatefulWidget {
  const pageOne({super.key});

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.network(
              'https://lottie.host/b82693f2-1702-4118-be1e-6632061e3918/e1LPG7ssxa.json'),
          Center(
            child: Text('DEVELOPER DELOWER',style: TextStyle(color: Colors.deepPurple[300],fontSize: 27),),
          ),
          Text('Ecommerce App',style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
