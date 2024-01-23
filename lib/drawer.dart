import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[700]),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/12567167.jpeg'),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Text('Darryll Vincent',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    ),
                    
                    SizedBox(height: 15,),

                    Text('sample@nyp.edu.sg',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12),
                    )
                  ],
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Homepage'),
            ),

            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Ezlink'),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            
          ],
        )
      ),
    );
  }
}