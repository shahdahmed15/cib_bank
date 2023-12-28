import 'package:cib_system/json/users.dart';
import 'package:cib_system/screens/login.dart';
import 'package:cib_system/screens/sqlite/database.dart';
import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var usrName=TextEditingController();
  var password=TextEditingController();
  var conpassword=TextEditingController();
  var email=TextEditingController();
  var credit=TextEditingController();
  var pin=TextEditingController();
  final db=DatabaseHelper();
  signup()async{
    var res=await db.createUser(Users(usrName: usrName.text, usrPassword: password.text,usrCredit:credit.text,email: email.text));
    if(res>0){
      if(!mounted)return;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/mobile cover.jpg"),
                      fit: BoxFit.fill
                  )
              ),
            ),
             Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        image: AssetImage("assets/images/Bank_logo_real.png")),
                    Text("REGISTER FOR INTERNET BANKING",style: TextStyle(fontWeight: FontWeight.bold),),
                    TextFormField(
                      controller: usrName,
                      validator:  (String? value){
                        if(value == null || value.isEmpty){
                          return 'email must not be empty ' ;
                        }
                        return  null ;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Icon(Icons.person_outline),
                        hintText: "User Name",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                    SizedBox(height:5 ),
                    TextFormField(
                      controller: email,
                      validator:  (String? value){
                        if(value == null || value.isEmpty){
                          return 'email must not be empty ' ;
                        }
                        return  null ;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Icon(Icons.email),
                        hintText: "email",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                    SizedBox(height:5 ),
                    TextFormField(
                      obscureText: true,
                      controller: password,
                      validator:  (String? value){
                        if(value == null || value.isEmpty){
                          return 'email must not be empty ' ;
                        }
                        return  null ;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Password",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                    SizedBox(height:5 ),
                    TextFormField(
                      obscureText: true,
                      controller: conpassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        hintText: "password",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                    SizedBox(height:5 ),
                    TextFormField(
                      controller: credit,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Icon(Icons.credit_card),
                        hintText: "Credit Card",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                    SizedBox(height:5 ),
                    TextFormField(
                      obscureText: true,
                      controller: pin,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        prefixIcon: Icon(Icons.credit_score),
                        hintText: "Debit/Credit Card PIN",
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                    Container(
                      width: 330,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(10)
                      ),

                      child: MaterialButton(onPressed: (){
                        signup();
                      },
                        child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Does you have account? ',style: TextStyle(color: Colors.white),),
                          TextButton(
                            child: Text('Sign In'),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (_) => LoginScreen()),
                                      (Route<dynamic> route) => false);
                            },
                          )

                        ],
                      ),
                    ),



                  ],
                ),
              ),




          ],
        ),
      ),

    );
  }
}
