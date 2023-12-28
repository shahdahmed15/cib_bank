import 'package:flutter/material.dart';
class Requset extends StatelessWidget {
  const Requset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                width: 100,
                height:130,
                image: AssetImage("assets/images/Bank_logo_real.png"),

              )
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.request_page_outlined,
                        color:Colors.white,
                        size: 50,
                      ),
                      SizedBox(width: 70,),
                      Icon(
                        Icons.credit_score,
                        color:Colors.white,
                        size: 50,
                      ),
                      SizedBox(width: 70,),
                      Icon(
                        Icons.print,
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
                      Text("Request \nNew Cheque\n Book ",style: TextStyle(color: Colors.white,fontSize: 15),),
                      SizedBox(width: 10,),
                      Text("Dispute Credit \nCard Transaction",style: TextStyle(color: Colors.white,fontSize: 15),),
                      SizedBox(width: 15,),
                      Text("Inquiries -\nSuggestions-\n Complaints",style: TextStyle(color: Colors.white,fontSize: 15),),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.back_hand,
                        color:Colors.white,
                        size: 50,
                      ),
                      SizedBox(width: 75,),
                      Icon(
                        Icons.contact_phone,
                        color:Colors.white,
                        size: 50,
                      ),
                      SizedBox(width: 75,),
                      Icon(
                        Icons.lock_clock,
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
                      SizedBox(width: 35,),
                      Text("Stop Lost\n/Stolen \nCredit Card",style: TextStyle(color: Colors.white,fontSize: 15),),
                      SizedBox(width: 35,),
                      Text("Update Contact\n Information",style: TextStyle(color: Colors.white,fontSize: 15),),
                      SizedBox(width: 35,),
                      Text("Token \n Activation",style: TextStyle(color: Colors.white,fontSize: 15),),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}