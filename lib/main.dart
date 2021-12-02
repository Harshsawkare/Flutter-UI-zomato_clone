
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zomato_clone/navigation.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zomato UI',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    nextPage();
  }

  void nextPage() async{
    Future.delayed(
        Duration(seconds: 3),
        ()=> Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Navigation()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(230, 0, 0, 1), Color.fromRGBO(230, 0, 0, 0.65)]
            )
          ),
          child: Center(
            child: Column(
              children: [
                Expanded(child: Container()),

                Text("zomato",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 65,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),),

                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("Climate Conscious Delivery",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 10),
                  child: Text("IN INDIA",
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                    ),),
                ),

                Image.asset("images/deliveryguy.png", width: 150, height: 150, fit: BoxFit.cover,),

                Expanded(child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

