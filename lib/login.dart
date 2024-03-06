import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(240, 244, 243, 1),
      body: Container(
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
            children: <Widget> [
              SizedBox(height: 250,),
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontFamily: 'Poppins-Black',
                  fontSize: 42,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset('gb2.png'),
              const SizedBox(
                height: 40,
              ),
              TextField(
               controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hoverColor: Color.fromRGBO(240, 244, 243, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: hidepass,
                decoration: InputDecoration(
                labelText: 'Enter Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 100),
              Text(
  "Forget Password?",
  style: TextStyle(color: Color(0xff0000ff)),
),
SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(100, 5, 100, 5),
                  backgroundColor: const Color.fromARGB(255, 78, 147, 203),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>  DashBoard ()),
                  );
                },
                child: const FittedBox(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins-Black',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0,),
               Container(
                    margin: EdgeInsets.fromLTRB(20, 15, 10, 10),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins-Black',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.5699999332,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Don’t have an account ? ',
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Poppins-Black',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.5699999332,
                              color: Color.fromRGBO(80, 194, 201, 1),
                            ),
                          ),
                        ],
                      ),
                    )),
              
              const SizedBox(
                height: 20,
              ),
            ],
          ),
            ],
        ),
        ),
      ),
    );
  }
}