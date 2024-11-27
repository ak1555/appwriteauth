import 'package:appwriteauthentication/AppwriteServices/appwriteservices.dart';
import 'package:appwriteauthentication/homepage.dart';
import 'package:appwriteauthentication/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  late Appwriteservices _appwriteservices;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appwriteservices = Appwriteservices();
  }

  Future<void> loginUser() async {
    try {
      await _appwriteservices.loginUser(_email.text, _password.text);
      
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "L O G I N",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.purple.shade800),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 63,
              width: double.infinity,
              padding: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 27,
                    color: Colors.purple.shade900,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "USERNAME..."),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 63,
              width: double.infinity,
              padding: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    size: 27,
                    color: Colors.purple.shade900,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextField(
                    controller: _password,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "PASSWORD..."),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Colors.purple.shade600,
                      Colors.purpleAccent.shade400
                    ])),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.only(
                            top: 13, bottom: 13, left: 30, right: 30),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    onPressed: () {
                      loginUser();
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Text(
                      "SIGNIN",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17),
                    )),
              ),
            ),
            SizedBox(height: 165),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do have any account?"),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ));
                  },
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(color: Colors.purple[900]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
