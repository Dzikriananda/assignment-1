import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/background.png"), fit: BoxFit.cover,),
              )
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0,
                      MediaQuery.of(context).size.height * 0.25,
                      0,
                      MediaQuery.of(context).size.height * 0.05
                  ),
                  child:  IconButton(
                      onPressed: () {
                        debugPrint('ambatunat');
                      },
                      icon:  ImageIcon(
                        AssetImage('assets/images/ic_photo@3x.png'),
                        size: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.white,
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child:  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Color(0XFFAAAAAA)),
                      hintText: "Name",
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child:  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Color(0XFFAAAAAA)),
                      hintText: "Palindrome",
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}

// bool isPalindrome(String s) {
//   // Remove spaces and convert the string to lowercase
//   s = s.replaceAll(' ', '').toLowerCase();
//
//   // Check if the string is equal to its reverse
//   return s == s.split('').reversed.join('');
// }
//
// void main() {
//   print(isPalindrome("kasur rusak")); // Output: true
//   print(isPalindrome("step on no pets")); // Output: true
//   print(isPalindrome("put it up")); // Output: true
//   print(isPalindrome("suitmedia")); // Output: false
//   print(isPalindrome("suitmedia")); // Output: false
//
// }

