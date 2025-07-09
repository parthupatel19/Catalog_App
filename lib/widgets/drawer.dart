import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://images.unsplash.com/photo-1526779259212-939e64788e3c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D';
    return Drawer(
      child: Container(
        // color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                  accountName: Text('Parth Patel'),
                  accountEmail: Text('abc@gmail.com'),
                currentAccountPicture: Image.network(imageUrl),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text('Email'),
            ),
          ],
        ),
      ),
    );
  }
}
