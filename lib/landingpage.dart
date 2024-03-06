import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

   @override
   State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(240, 244, 243, 1),
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: -170,
                top: -70,
                child: Container(
                  width: 300,
                  height: 270,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(143, 255, 251, 50),
                  ),
                ),
                ),
                Positioned(
                left: -89,
                top: -150,
                child: Container(
                  width: 300,
                  height: 270,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromRGBO(143, 255, 251, 50),
                  ),
                ),
                ),
                
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(-5.0, 80.0),
                    child: Image.asset(
                      'assets/sms.png',
                      height: 100,
                      width: 100,
                      ),
                  ),

              const SizedBox(
                height: 300.0,
              ),
               Text(
                'Gets things with TODs',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
               ),
               SizedBox(
                height: 45.0,
               ),
               Text(
                'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
               ),
               const SizedBox(
                height: 100.0,
               ),
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blue.shade400,
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
                ), 
                onPressed: () {
                  Navigator.pushReplacement(
                  context,
                 MaterialPageRoute(builder: (context) => RegisterPage()),
              );
                  
                },
                child: const FittedBox(
                  child: Text(
                    'Get Started'
                    ),
                ),
                ),
                SizedBox(height: 6.0,)
                ],
              )
            ],
          )
        ),
      ),

    );
  }
}