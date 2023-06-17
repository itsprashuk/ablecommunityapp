import 'package:ablecommunityapp/signin.dart';
import 'package:flutter/material.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
   var _secureText = true;
  String? _nameError = null;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _passowrdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              maxLength: 20,
              controller: _nameController,
              decoration: InputDecoration(
                errorText: _nameError,
                labelText: "Name",
                hintText: "Enter your Name",
                labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your Email.",
                labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),

            TextField(
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password.",
                labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
           
           ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_nameController.text.length < 3)
                      _nameError = "Enter at least 3 character";
                    else
                      _nameError = null;
                  });


                  print("Name: " + _nameController.text);
                },
                child: Text("Submit"),
                
                
                ),

             Container(
              width: 10,
               child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return signin();
                  }));
                print('Button pressed');
            },
            child: Text("Signin"),
            ),
             )      
          ],
        ),
      )),
    );
  }
}
     
  
