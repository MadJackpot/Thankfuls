import 'package:flutter/material.dart';
import 'package:thankfuls/Data/HappinessLevel.dart';
import 'package:thankfuls/Data/Thankful.dart';
import 'package:thankfuls/add_a_thankful.dart';
import 'package:thankfuls/thankfulDetails.dart';

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() {
    return new _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<Thankful> thankfuls = [_thankfulGenerator()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your thankfuls"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.remove_circle),
            onPressed: (){
              setState(() {
                thankfuls.clear();
              });
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: thankfuls.length,
        itemBuilder: (context, index) {
          return Container(
            height: 70.0,
            child: InkWell(
              onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => ThankfulDetails(thankfuls[index])));},
              child: ListTile(
                title: Text("Test"),
                leading: Icon(Icons.dashboard),
                trailing: Text(thankfuls[index].thankfulNote),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(context, MaterialPageRoute(
            builder: (context) => AddAThankfulPage(),
          ));
          setState(() {
            if (result != null) thankfuls.add(result);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Thankful _thankfulGenerator() {
  Thankful thankful = Thankful();
  thankful.happinessLevel = HappinessLevel.VeryHappy;
  thankful.thankfulNote = "This was such an awesome day! :)";

  return thankful;
}
