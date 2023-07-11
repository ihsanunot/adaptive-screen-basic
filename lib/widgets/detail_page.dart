import 'package:flutter/material.dart';
import 'package:renspos_satu/widgets/detail_widget.dart';

// Detail Page (Untuk Screen yang Lebih Kecil)

class DetailPage extends StatefulWidget {
  final int data;

  const DetailPage(this.data);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailWidget(widget.data),
    );
  }
}
