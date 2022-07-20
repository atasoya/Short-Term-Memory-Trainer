import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  double _currentSliderValue = 10;
  var _digitNumber = "10";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2D1D1),
        title: Text("Short-Term Memory",style: GoogleFonts.firaSans(fontSize: 32,letterSpacing: 0),),
        centerTitle: true,
      ) ,
        backgroundColor: const Color(0xFFDAEAF1) ,
        body: Column(
          children: [
            const SizedBox(height: 200),
            Center(
              child: Text("Enter Digit Number",style: GoogleFonts.firaSans(textStyle: const TextStyle(fontSize: 38,color: Color(0xFF66C7EA),letterSpacing: 0,fontWeight: FontWeight.w500))),
            ),
      Slider(
        value: _currentSliderValue,
        min: 0,
        max: 20,
        divisions: 20,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
            _digitNumber = _currentSliderValue.toInt().toString();
          });
        },
      ),
            Text(_digitNumber,style: GoogleFonts.firaSans(textStyle: const TextStyle(fontSize: 38,color: Color(0xFF66C7EA),letterSpacing: 0,fontWeight: FontWeight.w500))),
            SizedBox(height: MediaQuery.of(context).size.height/4,),
            ElevatedButton(onPressed: ()async{ // on press
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setDouble("digitNumber", _currentSliderValue);
              Navigator.pushNamed(context, '/digitScreen');

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
