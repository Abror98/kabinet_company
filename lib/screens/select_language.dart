import 'package:flutter/material.dart';
import 'package:kabinet_company/screens/base_screen.dart';
class SelectLanguage extends StatefulWidget {

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/bg_sign.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(color: Colors.white,
                  onPressed:() => onPressBtn(1), child:
                  Text("O'ZBEKCHA",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
              FlatButton(color: Colors.white, onPressed:() => onPressBtn(2),
                  child: Text( "РУССКИЙ", style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold),)),
              FlatButton(color: Colors.white, onPressed:() => onPressBtn(3),
                  child: Text("ЎЗБEКЧА", style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }

  onPressBtn(int i){
     if(i == 1){
       Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => BasePage()),
       );
     }
     if(i == 2){
       Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => BasePage()),
       );
     }
     if(i == 3){
       Navigator.pushReplacement(
         context,
         MaterialPageRoute(builder: (context) => BasePage()),
       );
     }
  }
}
