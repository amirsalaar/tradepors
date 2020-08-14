import 'package:flutter/material.dart';

void main() => runApp(MyApp());
const countries = ["USA", "Canada", "England"];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit Profile',
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.white),
          title: Text('Edit Profile'),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Text("Save"),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: new ListTile(
                    leading: Text('First Name'),
                    title: new TextField(
                      decoration: new InputDecoration(
                        hintText: "First Name",
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: new ListTile(
                    leading: Text('Last Name'),
                    title: new TextField(
                      decoration: new InputDecoration(
                        hintText: "Last Name",
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text("Select Country"),
                            isDense: true,
                            items: countries.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    })),
                Container(
                    child: RaisedButton(
                  onPressed: () {},
                  child: Text('Change Password?'),
                  color: Color(0xFFFBC02D),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
