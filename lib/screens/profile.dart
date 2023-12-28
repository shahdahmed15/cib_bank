import 'dart:ffi';

import 'package:cib_system/screens/Animated_card.dart';
import 'package:cib_system/screens/requset.dart';
import 'package:cib_system/screens/sqlite/database.dart';
import 'package:cib_system/screens/transfer.dart';
import 'package:flutter/material.dart';

import '../json/users.dart';
import 'info.dart';
class Profile extends StatelessWidget {
  final Users? profile;
  Profile({super.key,this.profile});
  final db=DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        child: Image(
                          width: 100,
                          height:130,
                          image: AssetImage("assets/images/Bank_logo_real.png"),

                        )
                    ),
                    SizedBox(width: 100),
                    Column(
                      children: [
                        Container(
                          child:  IconButton(
                            iconSize: 40,
                            color: Colors.white,
                            icon: const Icon(
                              Icons.account_circle,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>info()));
                            },
                          ),

                        ),
                        Text("userName:${profile!.usrName}",style: const TextStyle(color: Colors.orange),),
                        Text("Email:${profile!.email}",style: const TextStyle(color: Colors.orange),),


                      ],
                    )
                  ],
                ),
                Text("Credit Cards",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                Text("Primary/e-Com MC CC-STF",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.white),),

                SizedBox(height: 10,),
                Center(
                  child: Column(
                    children: [
                      Text(profile!.usrCredit??"",style: TextStyle(fontSize: 20,color: Colors.orange),),
                      SizedBox(height: 10,),
                      Text("Credit left To Use",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 10,),
                      Text("EGP 888.5",style: TextStyle(color: Colors.white,fontSize: 20)),
                      SizedBox(height: 10,),
                      Text("Credit Limit EGP 10000.000",style: TextStyle(color: Colors.white,fontSize: 20)),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.brightness_1 ,color: Colors.white.withOpacity(0.2),size: 13,),
                          Icon(Icons.brightness_1 ,color: Colors.white.withOpacity(0.2),size: 13,),
                          Icon(Icons.brightness_1 ,color: Colors.white.withOpacity(0.2),size: 13,),
                          Icon(Icons.brightness_1 ,color: Colors.white.withOpacity(0.2),size: 13,),
                          Icon(Icons.brightness_1 ,color: Colors.white.withOpacity(0.2),size: 13,),
                          Icon(Icons.brightness_1 ,color: Colors.white.withOpacity(0.2),size: 13,),
                          Icon(Icons.brightness_1 ,color: Colors.white.withOpacity(0.2),size: 13,),
                          Icon(Icons.brightness_1 ,color: Colors.white,size: 13,),



                        ],
                      ),
                      SizedBox(height: 20,),

                      Container(
                          width: double.infinity,
                          height: 80,
                          color: Colors.white.withOpacity(0.2),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back,size: 20,color: Colors.white,),
                              SizedBox(width: 90,),
                              Text("Investment Funds",style: TextStyle(fontSize: 20, color: Colors.white),),
                              SizedBox(width: 90,),
                              Icon(Icons.arrow_forward,size: 20,color: Colors.white,)


                            ],
                          )
                      ),






                    ],
                  ),
                ),
                SizedBox(height:11 ,),
                Text("Qick links",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 12),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CurrencyConverterPage()));

                        },
                        child: Row(
                          children: [
                            Text("Currency \nConverter",style: TextStyle(color: Colors.orange),),
                            SizedBox(width: 10),
                            Icon(Icons.compare_arrows,size: 30,color: Colors.white,)

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 12),
                      child: Row(

                        children: [
                          Text("Credit Card\n Payment "
                            ,style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(width: 15),
                          Icon(Icons.credit_card,size: 30,color: Colors.white,)
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 12),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Requset()));
                        },
                        child: Row(
                          children: [
                            Text("Request \nservices ",style: TextStyle(color: Colors.orange),),
                            SizedBox(width: 10),
                            Icon(Icons.request_page_outlined,size: 30,color: Colors.white,)

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 12),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordField()));
                        },
                        child: Row(
                          children: [
                            Text("Animated\nCard ",style: TextStyle(color: Colors.orange),),
                            SizedBox(width: 10),
                            Icon(Icons.credit_card,size: 30,color: Colors.white,)

                          ],
                        ),
                      ),
                    ),

                  ],
                )



              ],
            ),

          ],
        ),

      ) ,
    );
  }
}
