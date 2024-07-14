import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
Random random = Random();
int x = 4;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
            print(x);
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Lottery winning number is 4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: x == 4 ? Colors.teal.withOpacity(0.2) : Colors.grey.withOpacity(.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4 ?  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Icon(
                      Icons.done_all,
                      color: Colors.green,
                      size: 35,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Congratulation you won the lottery, \n your number matched and is $x', textAlign: TextAlign.center,
                      style: const TextStyle(
                      ),
                    ),
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 35,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Better luck next time your number is $x \n try again', textAlign: TextAlign.center,
                      style: const TextStyle(
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
