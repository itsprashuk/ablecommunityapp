import 'package:flutter/material.dart';

class postcreation extends StatefulWidget {
  const postcreation({super.key});

  @override
  State<postcreation> createState() => _postcreationState();
}

class _postcreationState extends State<postcreation> {
  TextEditingController Title=TextEditingController();
  TextEditingController Description=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child:TextField(
                  controller: Title,
                  decoration: InputDecoration(hintText: "Title"),
      
                )
              ),
              SizedBox(height: 10,),
               Expanded(
                 child: Container(
                  height: 20,
                  decoration: BoxDecoration(border: Border.all()),
                  child:TextField(
                    controller: Description,
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(hintText: "Description"),
               
                  )
                         ),
               ),
                  ElevatedButton(
                onPressed: (){
                  
                print('Button pressed');
            },
            child: Text("Post"),
            ),
      
            ],
      
           
            ),
        ),
      )
    );
    }
    
  }
