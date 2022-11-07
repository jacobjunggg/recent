import 'package:flutter/material.dart';
import 'package:instagram/main.page/home.dart';
import 'package:instagram/Search/search.dart';
import 'package:instagram/social/search_social.dart';
import '../style.dart';
import 'main_screen.dart';
import 'main_all.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();
  runApp(MaterialApp(
    theme: theme,
      home:LoginSignupScreen()
  )
  );
}









