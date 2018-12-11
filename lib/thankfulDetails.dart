import 'package:flutter/material.dart';
import 'package:thankfuls/Data/Thankful.dart';

class ThankfulDetails extends StatelessWidget {
  final Thankful thankful;

  ThankfulDetails(this.thankful);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(thankful.dayOfTheWeek),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Your Thankful"),
                Text(thankful.thankfulNote),
              ],
            ),
          )
        ],
      ),
    );
  }
}
