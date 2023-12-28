import 'package:cib_system/screens/profile.dart';
import 'package:flutter/material.dart';

import '../json/users.dart';
import 'login.dart';
class info extends StatelessWidget {
  final Users? profile;
  const info({super.key,this.profile});

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
            SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 45.0,horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 77,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/no_user.jpg"),
                          radius: 75,
                        ),
                      ),

                      const SizedBox(height: 10),
                      Text(profile!.usrName??"",style: const TextStyle(fontSize: 28,color: Colors.white),),
                      Text(profile!.email??"",style: const TextStyle(fontSize: 17,color: Colors.grey),),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                      }, child: Text("Sign out")),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));
                      }, child: Text("Go Back")),




                      ListTile(
                        leading: const Icon(Icons.person,size: 30),
                        subtitle: const Text("user name"),
                        title: Text(profile!.usrName??""),
                      ),

                      ListTile(
                        leading: const Icon(Icons.email,size: 30),
                        subtitle: const Text("Email"),
                        title: Text(profile!.email??""),
                      ),

                      ListTile(
                        leading: const Icon(Icons.credit_card,size: 30),
                        subtitle: Text(profile!.usrCredit??""),
                        title: const Text("Credit Card"),
                      ),

                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
