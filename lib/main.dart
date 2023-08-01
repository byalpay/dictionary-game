import 'package:flutter/material.dart';
import 'package:dictionary/widgets/addedButton.dart';
import 'package:dictionary/widgets/frontofCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionary Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dictionary Game'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get yourCardList => null;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Sütun sayısı
          mainAxisSpacing: 8, // Dikey aralık
          crossAxisSpacing: 8, // Yatay aralık
          childAspectRatio: 1.5, // Genişlik/yükseklik oranı
        ),
        itemCount: 20, // Toplam Card sayısı
        itemBuilder: (context, index) {
          return frontofCard();
        },
      ),
    );
  }
}
