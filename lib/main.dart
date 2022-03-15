import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectflutter/screen/chat_screen.dart';
import 'package:projectflutter/screen/login_screen.dart';
import 'package:projectflutter/screen/registration_screen.dart';
import 'package:projectflutter/screen/welcome_screen.dart' ;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
        
      },
    );
  }
}