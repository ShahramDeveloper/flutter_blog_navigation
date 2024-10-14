import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/custom_widgets/post_widget.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('VIP اخبار و سیگنال های '),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  getBlogPost(
                      imageName: 'images/s.png',
                      title: ' برای ۱۴ آبان safeMoon سیگنال خرید ',
                      buy: 'خرید روی ۱۲،۳۶۵',
                      sell: 'فروش روی ۱۲،۵۶۰'),
                  getBlogPost(
                    imageName: 'images/r.png',
                    title: ' برای ۱۴ آبان Ripple سیگنال خرید ',
                    buy: 'خرید روی ۶،۵۰۰',
                    sell: 'فروش روی ۴،۵۶۰',
                  ),
                  getBlogPost(
                    imageName: 'images/a.png',
                    title: ' برای ۱۴ آبان Alchemy Pay سیگنال خرید ',
                    buy: 'خرید روی ۲۰،۰۰۰',
                    sell: 'فروش روی ۱۸،۶۵۰',
                  ),
                  getBlogPost(
                    imageName: 'images/c.png',
                    title: ' برای ۱۴ آبان Cosmos سیگنال خرید ',
                    buy: 'خرید روی ۱۶،۵۶۰',
                    sell: 'فروش روی ۱۳،۷۳۴',
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
