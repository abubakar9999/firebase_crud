import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  TextEditingController nameControler= TextEditingController();
  TextEditingController emailControler= TextEditingController();
  TextEditingController passwordControler= TextEditingController();
  final _formkey= GlobalKey<FormState>();
  String name='';
  String password='';
  String email='';

  @override
  void dispose() {
    
    nameControler.dispose();
    emailControler.dispose();
    passwordControler.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40,),

                    Center(child: Text("Add student",style: TextStyle(
                      fontSize: 40
                    ))),

                    SizedBox(height: 30,),
                    Form(
                      key: _formkey,
                      child: Column(
                      children: <Widget>[
                        TextFormField(
                            validator: (value) {
                              if(value==null || value.isEmpty){
                                return "Please Enter Name";
                              }
                              return null;
                            },
                          controller: nameControler,
                          decoration: InputDecoration(
                            labelText: "Name",
                            
                          
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          
                        ),
                        SizedBox(height: 10,),
                          TextFormField(
                            validator: (value) {
                              if(value==null || value.isEmpty){
                                return "Please Enter email";
                              }else if(value.contains('@')){
                                return "Please enter Valit Email";
                              }
                              return null;
                            },
                          controller: emailControler,
                          decoration: InputDecoration(
                            labelText: "Email",
                            
                          
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          
                        ),
                        SizedBox(height: 10,),
                          TextFormField(
                            obscureText: true,
                       
                              validator: (value) {
                              if(value==null || value.isEmpty){
                                return "Please Enter password";
                              }
                              return null;
                            },
                          controller: passwordControler,
                          decoration: InputDecoration(
                            labelText: "Password",
                            
                          
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          
                        ),

                      ],
                    )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){

                          if(_formkey.currentState!.validate()){
                            setState(() {
                              name=nameControler.text;
                              email=emailControler.text;
                              password=passwordControler.text;
                            });
                            cleatTxtt();
                            users();

                          }

                        }, child: Text("Registar")),
                        SizedBox(
                          width: 50,
                        ),
                        ElevatedButton(onPressed: (){
                          cleatTxtt();
                        }, child: Text("Reset")),
                      ],
                    )

          ],
    ),
      ),
    );
  }
  
  void cleatTxtt() {
    nameControler.clear();
    emailControler.clear();
    passwordControler.clear();
  }
  
  void users() {


  }
}


