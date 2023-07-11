import 'package:flutter/material.dart';

class DetailWidget extends StatefulWidget {
  final int data;

  const DetailWidget(this.data);

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.data.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 36.0),
            )
          ],
        ),
      ),
    );
  }
}
