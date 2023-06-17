import 'package:ablecommunityapp/singup.dart';
import 'package:flutter/material.dart';
class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  

  var _secureText = true;
  String? _nameError = null;
  TextEditingController _emailController = TextEditingController();
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
              controller: _emailController,
              decoration: InputDecoration(
                errorText: _nameError,
                labelText: "Email",
                hintText: "Enter your Email",
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
                labelText: "Password",
                hintText: "Enter your password.",
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
                    if (_emailController.text.length < 3)
                      _nameError = "Enter at least 3 character";
                    else
                      _nameError = null;
                  });


                  print("Name: " + _emailController.text);
                },
                child: Text("Submit"),
                
                
                ),
             SizedBox(
            width: 20,
               child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return signup();
                  }));
                print('Button pressed');
            },
            child: Text("Signup"),
            
            ),
             )      
          ],
        ),
      )),
    );
  }
}


  
