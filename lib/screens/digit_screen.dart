import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';
class DigitScreen extends StatefulWidget {
  const DigitScreen({Key? key}) : super(key: key);

  @override
  State<DigitScreen> createState() => _DigitScreenState();
}



class _DigitScreenState extends State<DigitScreen> {

  void getDigitNumber()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var digitNumber = prefs.getDouble("digitNumber");
    var rng = Random();
    var allNumber="";
    for(var i= 0.0;i<digitNumber!;i++){
      setState(() {
        _digit = " ";
      });
      await Future.delayed(const Duration(milliseconds: 500));
      var randomDigit = rng.nextInt(10);
      print(randomDigit);
      allNumber += randomDigit.toString();
      prefs.setString("expectedNumber", allNumber);
      setState(() {
        _digit = randomDigit.toString();
      });
      await Future.delayed(const Duration(milliseconds: 1000));


    }
    await Future.delayed(const Duration(milliseconds: 250));
    Navigator.pushNamed(context, '/answerScreen');
  }

  var _digit ;
  @override
  void initState() {
    // TODO: implement initState
    _digit = " ";
    getDigitNumber();

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF2D1D1),
          title: Text("Short-Term Memory",style: GoogleFonts.firaSans(fontSize: 32,letterSpacing: 0),),
          centerTitle: true,
        ) ,
        backgroundColor: const Color(0xFFDAEAF1) ,
        body: Column(
          children: [
            const SizedBox(height: 250),
            Center(
              child: Text(_digit,style: GoogleFonts.firaSans(textStyle: const TextStyle(fontSize: 128,color: Color(0xFF66C7EA),letterSpacing: 0,fontWeight: FontWeight.w500))),
            ),


          ],
        )
    );
  }
}
