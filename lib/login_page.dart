import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/blog_page.dart';
import 'package:flutter_blog_navigation/password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void navigateToAScreen(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  ' خوش آمدید VIP به اپلیکیشن سیگنال ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  onPressed: () {
                    navigateToAScreen(context, BlogScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                    foregroundColor: Colors.black,
                    side: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ثبت نام'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: Size(200.0, 40.0),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateToAScreen(context, PasswordRecovery());
                  },
                  child: Text(
                    'فراموشی رمز عبور',
                  ),
                  style: TextButton.styleFrom(foregroundColor: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
