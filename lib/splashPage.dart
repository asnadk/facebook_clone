import 'dart:async';

import 'package:facebook_clone_app/Homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Center(
              child: Image.network('https://th.bing.com/th/id/OIP.QHODby_bS81-x2of8vCIhgAAAA?rs=1&pid=ImgDetMain',width: 100,
              height: 100,),
           ),
           
            Positioned(
            bottom: 50,
            left: 160,
            child:Column(
              children: [
                const Text('from'),
                Row(
                  children: [
                    Image.asset('assets/images/meta.png',
                    width: 25,
                    height: 25,
                    ),
                    SizedBox(width: 2,),
                    const Text('Meta',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            )
            )
          ],
         )
    );
  }
}


// Stack(children: [
//               'https://th.bing.com/th/id/OIP.QHODby_bS81-x2of8vCIhgAAAA?rs=1&pid=ImgDetMain',

//         Center(
//           child: Image.asset(
//             'assets/fbog.png',
//             width: 100,
//             height: 100,
//           ),
//         ),
//         const Text('from'),
//         Positioned(
//           bottom: 20,
//           left: 120,
//           child: Image.asset(
//             'assets/metaog.png',
//             width: 150,
//             height: 100,
//           ),
//         ),
//       ]),
//     );
