import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 15,right: 15),
        child: ListView(
          children: [
            SizedBox(height: 190,),
             Text("CREATE AN ACCOUNT",style: TextStyle(color: Colors.purple.shade900,fontWeight: FontWeight.bold,fontSize: 25,letterSpacing: 2,wordSpacing: 1.5),),
             SizedBox(height: 60,),
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
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "USERNAME..."),
                  ))
                ],
              ),
            ),
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
                    Icons.email,
                    size: 26,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "EMAIL..."),
                  ))
                ],
              ),
            ),
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
                    Icons.remove_red_eye,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "PASSWORD..."),
                  ))
                ],
              ),
            ),
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
                    Icons.remove_red_eye,
                    size: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "CONFORM-PASSWORD..."),
                  ))
                ],
              ),
            ),
            SizedBox(height: 50,),
             Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 15, bottom: 15,left: 30,right: 30),
                      backgroundColor: Colors.purple,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  onPressed: () {},
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,color: Colors.white,
                        fontSize: 17),
                  )),
            ),
            SizedBox(height: 30,),
            Center(child: MaterialButton(splashColor: Colors.purple,
              onPressed: () {
              
            },child: Text("SIGNUP WITH GOOGLE",style: TextStyle(color: Colors.purple.shade900),),),),

              SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}