

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDAEAF1) ,
      body: Column(
        children: [
          const SizedBox(height: 75,),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width/3,
              height: MediaQuery.of(context).size.width/3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(48), // Image radius
                  child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/logo.png"),
                  ),
                ),
              )
            ),
          ),
          const SizedBox(height: 45,),
          Center(
              child: Text("Short-Term Memory",style: GoogleFonts.firaSans(textStyle: const TextStyle(fontSize: 38,color: Color(0xFF66C7EA),letterSpacing: 0,fontWeight: FontWeight.bold))),
          ),
          Center(
            child: Text("Trainer",style: GoogleFonts.firaSans(textStyle: const TextStyle(fontSize: 38,color: Color(0xFF66C7EA),letterSpacing: 0,fontWeight:FontWeight.w600))),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/3.2,),
          ElevatedButton(onPressed: ()async{ // on press
            Navigator.pushNamed(context, '/startPage');
          },style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF2D1D1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              minimumSize: Size(MediaQuery.of(context).size.width/1.1, MediaQuery.of(context).size.height/10.5),
              textStyle: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.w400)
          ),child: const Text("Start")),
        ],
      )
    );
  }
}
