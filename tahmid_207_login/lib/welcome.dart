import 'package:tahmid_207_login/register.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(

      body: Stack(
        children: [
          Positioned.fill(
            child: Image(image: AssetImage("img/bg.png"), fit: BoxFit.cover),
          ),

          Center(
            child: Column(
              children: [
                SizedBox(height: h*0.3,),
                SizedBox(
                  child: Text("Welcome Back",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: w*0.06),),
                ),
                SizedBox(height: h*0.02),
                SizedBox(
                  child: Text("Enter your details",
                  style: TextStyle( color: Colors.white, fontSize: w*0.05),
                  ),
                ),
                Spacer(),
                SizedBox(
                   width: w * 0.55,
                      height: h * 0.07,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          );
                        },
                        child:  Text(
                          "Next",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                ),
                SizedBox(height: h*0.03),
              ],
            ),
          )

        ],
      ),
    );
  }
}