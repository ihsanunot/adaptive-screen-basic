import 'package:flutter/material.dart';
import 'package:renspos_satu/widgets/detail_widget.dart'; //widget utk narik list nya
import 'package:renspos_satu/widgets/list_widget.dart'; // list array list
import 'package:renspos_satu/widgets/detail_page.dart'; // aman

// tampilkan layout dari device yg digunakan

class MasterDetailPage extends StatefulWidget {
  @override
  _MasterDetailPageState createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var selectedValue = 0;
  var isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {
        // nomor 2 yg penting if else nya
        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }

        return Row(
          children: <Widget>[
            Expanded(
              child: ListWidget(10, (value) {
                if (isLargeScreen) {
                  selectedValue = value;
                  setState(() {
                    // placeholder
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DetailPage(value);
                    }),
                  );
                }
              }),
            ),
            // ini main part utama no.1 nya
            isLargeScreen
                ? Expanded(child: DetailWidget(selectedValue))
                : Container(),
          ],
        );
      }),
    );
  }
}
