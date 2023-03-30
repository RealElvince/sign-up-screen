import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostelbooking/pages/login_screen.dart';

class ResgistrationPage extends StatefulWidget {
  const ResgistrationPage({super.key});

  @override
  State<ResgistrationPage> createState() => _ResgistrationPageState();
}

class _ResgistrationPageState extends State<ResgistrationPage> {
  // declaration and initialization of variables

  String _name = '';
  String _regNo = '';
  String _email = '';
  String _password = '';
  String _password2 = '';
  String _studyYear = '';
  String _studySemester = '';
  bool _loading = false;

  // loading update

  void updateLoading(bool isLoading) {
    setState(() {
      _loading = isLoading;
    });
  }

  // showError message function
  void showError(message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIosWeb: 1,
        fontSize: 16.0,
        textColor: Colors.white,
        backgroundColor: Colors.black87);
  }

  // handling registration

  void handleRegister() async {
    if (_name.isEmpty) {
      showError('Enter your full name');
      return;
    }
    if (_regNo.isEmpty) {
      showError('Enter your registration number');
      return;
    }
    if (_email.isEmpty) {
      showError('Enter your email address.');
      return;
    }
    if (_studySemester.isEmpty) {
      showError('Enter your study semester');
      return;
    }
    if (_studyYear.isEmpty) {
      showError('Enter your year of study');
      return;
    }
    if (_password.isEmpty || _password2.isEmpty) {
      showError('Enter both passwords.');
      return;
    }
    if (_password != _password2) {
      showError('Your Passwords do not match.');
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Register text
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'REGISTER ',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 36.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // Student name
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87)),
                  onChanged: (text) => _name = text,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // reg NO
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: 'Registration number',
                      labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87)),
                  onChanged: (text) => _regNo = text,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // email address
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87)),
                  onChanged: (text) => _email = text,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // study year + study semester
              Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    // Study year
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Study Year',
                              labelStyle: GoogleFonts.aBeeZee(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87)),
                          onChanged: (text) => _studyYear = text,
                        ),
                      ),
                    ),
                    // study semester
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Study semester',
                              labelStyle: GoogleFonts.aBeeZee(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87)),
                          onChanged: (text) => _studySemester = text,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87)),
                  onChanged: (text) => _password = text,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  obscuringCharacter: '*',
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: GoogleFonts.aBeeZee(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87)),
                  onChanged: (text) => _password2 = text,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // Button   
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 10.0),
                child: _loading
                    ? const CircularProgressIndicator(
                        semanticsLabel: 'Signing you up..',
                      )
                    : GestureDetector(
                        onTap: () {
                          handleRegister();
                        },    
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: size.width * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.black87),
                          child: Text('SIGN UP',
                              style: GoogleFonts.aBeeZee(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 17.0,
                              )),
                        ),
                      ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: RichText(
                      text: TextSpan(
                          text: 'Already have an account?',
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(
                            text: ' Sign In.',
                            style: GoogleFonts.aBeeZee(
                              color: Colors.blueGrey[900],
                            ))
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
