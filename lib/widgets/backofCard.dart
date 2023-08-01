import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class backofCard extends StatefulWidget {
  const backofCard({Key? key}) : super(key: key);

  @override
  State<backofCard> createState() => _backofCardState();
}

class _backofCardState extends State<backofCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: Card(
        color: Color.fromARGB(100, 100, 100, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 75, top: 50),
              child: Text("Türkçe"),
            ),
            Positioned(
              top: 10,
              left: 15,
              child: Text(
                'TR',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
