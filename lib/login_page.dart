import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'خوش آمدید',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.login,
                    size: 24.0,
                  )
                ],
              ),
              Image(
                image: AssetImage('images/welcome.png'),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => BlogScreen(),
                    ),
                  );
                },
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
              ElevatedButton(
                onPressed: () {},
                child: Text('ثبت نام'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  minimumSize: Size(200.0, 40.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
