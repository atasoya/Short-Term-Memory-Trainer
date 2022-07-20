import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  String numberString = "";
  var colorOfUser = Colors.white;
  void setData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var digitNumber = prefs.getDouble("digitNumber");
    var userInput = prefs.getString("userInput");
    var expectedNumber = prefs.getString("expectedNumber");
    setState(() {
      expected = expectedNumber!;
      user = userInput!;
      numberString = userInput;

    });
    var colors = <Color>[];
    for(var i = 0;i<expected.length;i++){
      if(user[i] == expected[i]){
        colors.add(Colors.green);
      }else{
        colors.add(Colors.red);
      }
    }
    setState(() {
      colorsLocal = colors;
    });
    print(colors);
    print(expectedNumber);
    }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }
  var expected = "";
  var user = "";
  var colorsLocal = <Color>[Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white];
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
          const SizedBox(height: 75,),
          Center(child: Text(expected,style: GoogleFonts.firaSans(fontSize: 40,letterSpacing: 0,color: Colors.white),)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for ( var i = 0 ;i<user.length;i++) Center(child: Text(user[i],style: GoogleFonts.firaSans(fontSize: 40,letterSpacing: 0,color:colorsLocal[i]),)),
            ],
          ),
          const SizedBox(height: 250,),
          ElevatedButton(onPressed: ()async{ // on press
            Navigator.pushNamed(context, '/digitScreen');

          },style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF2D1D1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              minimumSize: Size(MediaQuery.of(context).size.width/1.1, MediaQuery.of(context).size.height/10.5),
              textStyle: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.w400)
          ),child: const Text("Replay")),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: ()async{ // on press
            Navigator.pushNamed(context, '/indexPage');

          },style: ElevatedButton.styleFrom(
              primary: const Color(0xFFF2D1D1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              minimumSize: Size(MediaQuery.of(context).size.width/1.1, MediaQuery.of(context).size.height/10.5),
              textStyle: GoogleFonts.firaSans(fontSize: 32,fontWeight: FontWeight.w400)
          ),child: const Text("Home")),

        ],
      )
    );
  }

}


