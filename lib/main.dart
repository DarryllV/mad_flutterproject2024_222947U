import 'package:flutter/material.dart';
import 'package:flutter_project/register.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyData {
  final String firstName;
  final String lastName;
  MyData(this.firstName, this.lastName);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
        ),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,  
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[600],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700],
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[100],
                        ),
                      ),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[600],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[700],
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[100],
                        ),
                      ),
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),

                ElevatedButton(
                  child: Text('Log in'),
                  onPressed: () {
                    //initialize the data
                    MyData data = new MyData('Darryll','Vincent');
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage(data: data)),
                  );
                },
              ),

                TextButton(
                  child: Text('Register'),
                  onPressed: () {
                    //initialize the data
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
              ),

                ],
              ),
          ),
        ),
    );
  }
}