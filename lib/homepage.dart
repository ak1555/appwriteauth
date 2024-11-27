import 'package:appwriteauthentication/AppwriteServices/appwriteservices.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Appwriteservices _appwriteservices;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appwriteservices = Appwriteservices();
  }
  void logout()async{
    _appwriteservices.logout();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              Text("this is homepage"),
              SizedBox(height: 15,),
              TextButton(onPressed: () {
                logout();
                Navigator.of(context).pop();
              }, child: Text("LOGOUT"))
            ],
          ),
        ),
      ),
    );
  }
}