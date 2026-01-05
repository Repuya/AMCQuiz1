import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: sets app theme and first screen.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: It's the basic layout structure of your app screen, where you put UI elements like the app bar, action buttons, and so on. 
    appBar: AppBar(title: const Text('All Widgets')), //#3 AppBar: This is where you'll see the title of the app or page, and you can also put buttons here. It's also part of the Scaffold.
    body: Center( //#7 Center: It will make sure that the widget you want to place is in the middle, relative to the space available to it. 
      child: Container( //#8 Container: A fundamental widget that's like a box where you can put other widgets. It also provides a way to customize the appearance of the box itself. 
        padding: const EdgeInsets.all(20),
        child: Column( //#6 Column: A column where you can put widgets so they follow each other downwards. 
          children: [
            Row( //#5 Row: A line where you can put widgets side-by-side.  
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),  //#4 Text('Flutter'): The Text() widget in Flutter is used to display text. 'Flutter' is the text that's shown in your app or page, and you can replace it with any text you want.
              ],
            ),
          ],
        ),
      ),
    ),
  );
}