import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'خوش آمدید',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'ورود به حساب',
                style: TextStyle(fontSize: 16.0),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200.0, 40.0),
                foregroundColor: Colors.white,
                side: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  minimumSize: Size(200.0, 40.0)),
              onPressed: () {},
              child: Text(
                'ثبت نام',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('Second screen'),
          ),
        ),
      ),
    );
  }
}
