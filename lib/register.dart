import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 244, 243, 1),
      body: Container(
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Transform.translate(
                    offset: const Offset(0.0, 0.0),
                  ),
            SizedBox(
              height: 179.0,
            ),
            
            Text(
              'Welcome to Onboard! ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins-Black',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              'Let’s help to meet up your tasks. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins-Black',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
              ),
            ),
             SizedBox(
              height: 80.0,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Enter your full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Enter your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Enter Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
                    backgroundColor: Colors.blue.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: const FittedBox(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromRGBO(240, 244, 243, 1),
                        fontFamily: 'Poppins-Black',
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
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
                            text: 'Already have an account ? ',
                          ),
                          TextSpan(
                            text: 'Sign In',
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
             SizedBox(height: 30,),
          ],
        ),
            ],
        )
      ),
    );
  }
}

