import 'package:flutter/material.dart';
import 'package:instagram/main.page/main_home.dart';
import 'package:instagram/Search/search.dart';
import '../style.dart';
import 'login.dart';
import 'main_all.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MaterialApp(
    theme: theme,
      home:LoginSignupScreen()
  )
  );
}









