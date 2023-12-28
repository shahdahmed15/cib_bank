import 'package:cib_system/json/users.dart';
import 'package:cib_system/screens/info.dart';
import 'package:cib_system/screens/profile.dart';
import 'package:cib_system/screens/signup.dart';
import 'package:cib_system/screens/sqlite/database.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usrName=TextEditingController();
  var password=TextEditingController();
  bool isLoginTrue=false;
  final db=DatabaseHelper();
  /*login()async{
    Users? userDetail=await db.getUser(usrName.text);
   var res=await db.authenticate(Users(usrName: usrName.text, usrPassword: password.text));
   if(res == true){
     if(!mounted)return;
     Navigator.push(context, MaterialPageRoute(builder: (context)=>info(profile: userDetail)));
   }else{
     setState(() {
       isLoginTrue=true;
     });
   }

  }*/
  login()async{
    Users? userDetail=await db.getUser(usrName.text);
    var res=await db.authenticate(Users(usrName: usrName.text, usrPassword: password.text));
    if(res == true){
      if(!mounted)return;
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile(profile: userDetail)));
    }else{
      setState(() {
        isLoginTrue=true;
      });
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
            Container(
                child: Image(
                  width: 150,
                  height:150,
                  image: AssetImage("assets/images/Bank_logo_real.png"),

                )
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150,),
                  //username
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: TextFormField(
                      controller: usrName,
                      decoration: InputDecoration(
                          labelText: "Username",
                          border: InputBorder.none,
                          labelStyle: TextStyle(
                              color: Colors.white

                          )
                      ),

                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    indent:30 ,
                    endIndent: 30,
                  ),
                  //password
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: TextFormField(
                      controller: password,
                      onTap: (){},
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: InputBorder.none,
                          labelStyle: TextStyle(
                              color: Colors.white

                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  //Button
                  Row(
                    children: [
                      Container(
                        width: 330,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: MaterialButton(onPressed: (){
                          login();
                        },
                          child:Text("Login",style: TextStyle(color: Colors.white),
                          ) ,),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange,
                        ),
                        child: IconButton(
                          //constraints: const BoxConstraints(minWidth: 50),
                            onPressed: () {
                              login();
                            },
                            icon: const ImageIcon(AssetImage(
                                'assets/images/icons8-fingerprint-50.png'))),
                      ),

                    ],
                  ),
                  SizedBox(height: 5,),
                  isLoginTrue? Text("Username or password is incorrect",style: TextStyle(color: Colors.red.shade900),):const SizedBox(),
                  SizedBox(height: 20,),
                  Container(
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Signup()));
                      },
                      child: Text("Register new user",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 300,
                    child: const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.vpn_lock_outlined,
                          color:Colors.white,
                          size: 50,
                        ),
                        SizedBox(width: 75,),
                        Icon(
                          Icons.phone_android,
                          color:Colors.white,
                          size: 50,
                        ),
                        SizedBox(width: 75,),
                        Icon(
                          Icons.analytics_outlined,
                          color:Colors.white,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 59,),
                        Text("IBAN",style: TextStyle(color: Colors.white,fontSize: 17),),
                        SizedBox(width: 75,),
                        Text("Tutorial",style: TextStyle(color: Colors.white,fontSize: 17),),
                        SizedBox(width: 75,),
                        Text("Exchange Rates",style: TextStyle(color: Colors.white,fontSize: 10),),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.card_giftcard,
                          color:Colors.white,
                          size: 50,
                        ),
                        SizedBox(width: 75,),
                        Icon(
                          Icons.local_offer,
                          color:Colors.white,
                          size: 50,
                        ),
                        SizedBox(width: 75,),
                        Icon(
                          Icons.more_horiz,
                          color:Colors.white,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 59,),
                        Text("IBAN",style: TextStyle(color: Colors.white,fontSize: 17),),
                        SizedBox(width: 75,),
                        Text("Tutorial",style: TextStyle(color: Colors.white,fontSize: 17),),
                        SizedBox(width: 75,),
                        Text("Exchange Rates",style: TextStyle(color: Colors.white,fontSize: 10),),

                      ],
                    ),
                  ),

                ],

              ),
            )

          ],

        ),
      ),
    );
  }
}
