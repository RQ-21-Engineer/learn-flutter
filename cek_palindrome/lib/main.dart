import 'package:flutter/material.dart';
import 'package:cek_palindrome/palindrome.dart';

void main() => runApp(const CekPalindromApp());

class CekPalindromApp extends StatelessWidget {
  const CekPalindromApp({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cek Kata Palindrom',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key, }) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}


class _MyCustomFormState extends State<MyCustomForm> {

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Palindrome palindrome = new Palindrome();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cek Kata Palindrom'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      
      floatingActionButton: FloatingActionButton (
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // TextEditingController.
                content: Text("hasil : \n" + palindrome.check(myController.text)),
              );
            },
          );
        },
        tooltip: 'Cek kata, apakah kata merupakan palindrom',
        child: const Text("Cek Kata", textAlign: TextAlign.center,),
      ),
    
    );
  }
}