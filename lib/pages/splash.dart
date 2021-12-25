import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speak_up/pages/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
  }

  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

        Container(
          margin: const EdgeInsets.fromLTRB(0, 180, 0, 70),
          child:SpinKitFadingCube(
            color: Colors.white,
            size: 60.0,
          ),
            // child: Image.asset('assets/splash.jpeg')
        ),
            Container(


              child: Text(
                  'Speak Up',
                  style:TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  )),
            ),
          ],
        ),
      )
    );
  }
}
