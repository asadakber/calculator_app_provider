import 'package:calc_app/modal/calc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<Calculator>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<Calculator> (
              builder: (BuildContext context, Calculator value, Widget child) => (
               Text(
                 'Output Value is: ${value.getSum()}',
                 style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.purple
                 ),
               )
              )
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter num 1",
              ),
              controller: calculator.t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter num 2",
              ),
              controller: calculator.t2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Colors.greenAccent,
                  onPressed: () => calculator.addtion(),
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.greenAccent,
                  onPressed: () => calculator.sub(),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("*"),
                  color: Colors.greenAccent,
                  onPressed: () => calculator.multiply(),
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Colors.greenAccent,
                  onPressed: () => calculator.divide(),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: () => calculator.clear(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




