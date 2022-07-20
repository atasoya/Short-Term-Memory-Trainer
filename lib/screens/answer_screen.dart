import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({Key? key}) : super(key: key);

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  var userInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF2D1D1),
        title: Text("Short-Term Memory",style: GoogleFonts.firaSans(fontSize: 32,letterSpacing: 0),),
        centerTitle: true,
      ) ,
      backgroundColor: const Color(0xFFDAEAF1) ,
      body: Column(
        children: [
          const SizedBox(height: 125,),
          Center(
            child: Text(userInput,style: GoogleFonts.firaSans(fontSize: 38,letterSpacing: 1,color: Colors.white),),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "1";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("1")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "2";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("2")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "3";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("3")),
          ],),
          const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "4";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("4")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "5";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("5")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "6";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("6")),
            ],),
          const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "7";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("7")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "8";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("8")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "9";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("9")),
            ],),
          const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: ()async{ // on press
                setState(() {
                  if(userInput.isNotEmpty){
                    userInput = userInput.substring(0, userInput.length - 1);
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 40,fontWeight: FontWeight.bold,letterSpacing: 0)
              ),child: const Text("DEL")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                setState(() {
                  if(userInput.length != digitNumber){
                    userInput += "0";
                  }

                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 75,fontWeight: FontWeight.w400)
              ),child: const Text("0")),
              const SizedBox(width: 16,),
              ElevatedButton(onPressed: ()async{ // on press
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var digitNumber = prefs.getDouble("digitNumber");
                if(digitNumber != userInput.length){
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Error'),
                      content: Text('Digits are missing! \n\nExpected ${digitNumber?.toInt()} got ${userInput.length}'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }else{
                  prefs.setString("userInput",userInput);
                  Navigator.pushNamed(context, '/resultScreen');
                }
                setState(() {
                });
              },style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF2D1D1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(100, 100),
                  textStyle: GoogleFonts.firaSans(fontSize: 40,fontWeight: FontWeight.bold)
              ),child: const Text("OK")),
            ],),
        ],
      ),
    );
  }
}
