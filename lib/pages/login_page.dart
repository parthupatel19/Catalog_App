import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('assets/images/login page.png',
          fit: BoxFit.fill,
          ),

          SizedBox(height: 20),

          Text('Welcome !',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 2,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ' Enter UserName',
                    labelText: 'User Name',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ' Enter Password',
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),

                ElevatedButton(
                    onPressed: (){},
                    child: Text('Log IN'),
                  style: TextButton.styleFrom(),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
