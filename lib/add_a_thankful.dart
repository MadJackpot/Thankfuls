import 'package:flutter/material.dart';
import 'package:thankfuls/Data/Thankful.dart';

class AddAThankfulPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a thankful"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
            child: Text(
              "Every day is great!",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )
            ),
          ),
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow.shade800,
            size: 40.0,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0, bottom: 10.0),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: "What's your thankful?",
                ),
                controller: textController,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.green.shade400,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              onPressed: (){
                var newThankful = Thankful();
                newThankful.thankfulNote = textController.text;
                Navigator.pop(context, newThankful);
              },
            ),
          )
        ],
      ),
    );
  }
}
