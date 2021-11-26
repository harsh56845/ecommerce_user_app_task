import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'notifiers/auth_notifier.dart';
import 'widgets/homepage.dart';
import 'widgets/login.dart';
import 'widgets/signup.dart';

class Auth extends StatefulWidget {
  const Auth({ Key? key }) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
 @override
  void initState() {
    AuthNotifier authNotifier = Provider.of<AuthNotifier>(context, listen: false);
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
        AuthNotifier authNotifier = Provider.of<AuthNotifier>(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Color.fromRGBO(255, 138, 120, 1),
              // Color.fromRGBO(255, 114, 117, 1),
              // Color.fromRGBO(255, 63, 111, 1),
              Color.fromRGBO(165, 138, 253, 1),
              Color.fromRGBO(165, 114, 253, 1),
              Color.fromRGBO(165, 55, 253, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MSI Foodz',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'MuseoModerno',
              ),
            ),
            Text(
              '',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 17,
                color: Color.fromRGBO(252, 188, 126, 1),
              ),
            ),
            SizedBox(
              height: 140,
            ),
            GestureDetector(
              onTap: () {
                (authNotifier.user == null)? Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Login();
                  })) : 
                (authNotifier.userDetails == null) ? print('wait') : 
                  (authNotifier.userDetails.role == 'admin')? 
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                        return HomePage();       
                      },
                    )):  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (BuildContext context) {
                         return Login();        
                      },
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(165, 55, 253, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}