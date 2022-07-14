import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/providers/auth_provider.dart';

// PAGES
import 'pages/edit_profile.dart';
import 'pages/home/detail_chat_page.dart';
import 'pages/home/main_page.dart';
import 'pages/product_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfile(),
          '/detail-product': (context) => ProductPage(),
        },
      ),
    );
  }
}
