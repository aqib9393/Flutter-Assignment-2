import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Login Page")),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Welcome to my login page. Please enter username and password to fill the textfield"),
              MyLogin()
            ],
          )),
    );
  }
}

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: 20,
      ),
      width: 350,
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[400],
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hintText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[400],
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  hintText: 'Password'),
            ),
            ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class Mycl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: "password",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Myck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final input = new TextField(
      textAlign: TextAlign.center,
      decoration: new InputDecoration.collapsed(
        hintText: "The hint text",
      ),
      obscureText: false,
    );

    final inputInBox = new FractionallySizedBox(
      widthFactor: 0.70666666666, // 265 / 375
      child: new Container(
        height: 44.0,
        child: new Center(child: new Container(child: input)),
        decoration:
            new BoxDecoration(borderRadius: new BorderRadius.circular(3.0)),
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that
        // was created by the App.build method, and use it to set
        // our appbar title.
        title: new Text(" hello"),
      ),
      body: new Container(
        child: new Center(
          child: inputInBox,
        ),
        decoration: new BoxDecoration(),
      ),
    );
  }
}
