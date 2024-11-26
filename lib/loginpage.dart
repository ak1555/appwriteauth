import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
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
              Text("L O G I N",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            SizedBox(height: 50,),
            Container(
              height: 65,
              width: double.infinity,
              padding: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextField(
                        controller: _username,
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
              height: 65,
              width: double.infinity,
              padding: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    size: 30,
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
              height: 50,
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 15, bottom: 15,left: 30,right: 30),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  onPressed: () {},
                  child: Text(
                    "SIGNIN",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
            ),

            SizedBox(height: 170,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do have any account?"),
                MaterialButton(onPressed: () {
                  
                },child: Text("SIGNUP",style: TextStyle(color: Colors.purple[900]),),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
