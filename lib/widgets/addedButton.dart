import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addedButton extends StatelessWidget {
  const addedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      tooltip: 'Increment',
      child: const Icon(Icons.add),
      onPressed: () {
        //buraya controllerden gelen insert fonksiyonu gelecek.
      },
    );
  }
}
Widget basicCard()=> Card(

);