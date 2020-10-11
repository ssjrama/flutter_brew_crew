import 'package:brew_crew/model/user.dart';
import 'package:brew_crew/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //print(user);

    // return authenticate or home widget
    //return Authenticate();
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
