import 'package:flutter/material.dart';
import 'package:project_new/utils/my_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = '';

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context){
    if(_formKey.currentState!.validate()){
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset('assets/images/login page.png',
            fit: BoxFit.fill,
            ),

            SizedBox(height: 20),

            Text('Welcome, $name',
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
                    onChanged: (value){
                      name = value;
                      setState(() {

                      });
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Username cannot be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: ' Enter Password',
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Password cannot be empty';
                      }else if(value.length <6){
                        return "Password should be atleast 6 character";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),

                  InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Log IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //     onPressed: (){
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: Text('Log IN'),
                  //   style: TextButton.styleFrom(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
