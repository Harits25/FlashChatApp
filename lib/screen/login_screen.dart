import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectflutter/screen/chat_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id  = "LOGIN_SCREEN";
  const LoginScreen ({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  // Saliva = Air Liur
  // Drool = Ngiler
  // Slpet so soundly = Tidur sangat nyenyak

  // I LIKE THE SMELL of my own saliva
  // This afternoon I SLEPT SO SOUNDLY that I'm EVEN drooled again
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         _auth.signOut();
          //         Navigator.pop(context);
          //       },
          //       icon: const Icon(Icons.list)
          //   ),
          // ],
        title: const Text('Log In'),
        backgroundColor: Colors.blueAccent),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                height: 200.0,
                // Belum Di isi
                child: Image.asset('images/logo.png'),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:  const InputDecoration(
                hintText: 'Enter Your Email.....',
                hintStyle: TextStyle(color: Colors.grey,fontSize: 13.0),
                contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                    BorderSide(color: Colors.lightBlueAccent,width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration:  const InputDecoration(
                hintText: 'Enter Your Password...',
                hintStyle: TextStyle(color: Colors.grey,fontSize: 13.0),
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.lightBlueAccent,width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child:Material(
                  color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () async {
                      try {
                        await _auth.signInWithEmailAndPassword(email: email, password: password);
                        Navigator.pushNamed(context, ChatScreen.id);
                      } catch (e) {
                        print(e);
                      }
                    },
                    // Navigator.pop(context);
                    // for login
                    minWidth: 200.0,
                    height: 50.0,
                    child: const Text(
                      'log in', style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}