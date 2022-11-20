import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/screens/register_screen.dart';
// ignore: unused_import
import 'package:flutter_login_ui/screens/theme_screen.dart';
import 'package:flutter_login_ui/utilities/constants.dart';
import 'package:flutter_login_ui/screens/forgotpassword_screen.dart';
// ignore: unused_import
import 'package:flutter_login_ui/screens/resetpassword_screen.dart';
import 'package:flutter_login_ui/screens/mainmenu_screen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;



  var size, height, width;
  
  Widget _buildEmailTF() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height/7.5, width: width/2,), 
        Text(
          'Email',
          style: kLabelStyle,
        ),

        
        SizedBox(height: height/70), 
        Container(
          alignment: Alignment.center,
           decoration: kBoxDecorationStyle,
           height: height/10,
           width: width/1.1,

         
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,
            ),
          ),
       )
      // ),
      ],
    );
  
  }

  Widget _buildPasswordTF() {


    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: kLabelStyle,
        ),
        SizedBox(height: height/50, width: width/2,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: height/10,
          width: width/1.1,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {


    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Container(
      height: height/ 20.0,
      alignment: Alignment(0.8, 0.0),
      child: FlatButton(
        onPressed: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
      },
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Container(
      height: height/40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: width/50),
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.red,
              activeColor: Colors.black,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: width/1.1,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => MainMenuScreen()));
      },






        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.black,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildSignInWithText() {


    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;




    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            height: height/900.0,
          ),
        ),
        SizedBox(height: height/80.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {


    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;



    return GestureDetector(
      // onTap: onTap,
      child: Container(
        height: height/ 6.0,
        width: width/ 6.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {


    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;



    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/logos/facebook.jpg',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/logos/google.jpg',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {


    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;




    return GestureDetector(
      onTap: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => RegisterScreen()));
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {


    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;



    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                    ],
                    stops: [0.0, 0.2, 0.4, 0.6, 0.9],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 0,
                    height: height/5,
                  ),
                  Container(
                    width: width/1.8,
                    height: height/8.0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/logos/logolifeassistant.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(

                child: SizedBox( // scroll hatasi çozumu
                    height: MediaQuery.of(context).size.height,
                         child: SingleChildScrollView(
                               reverse: false,
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                
                    SizedBox(height: height/90.0),
                    _buildEmailTF(),
                    SizedBox(
                      height: height/90.0,
                    ),
                    _buildPasswordTF(),
                    _buildForgotPasswordBtn(),
                    _buildRememberMeCheckbox(),
                    _buildLoginBtn(),
                    _buildSignInWithText(),
                    _buildSocialBtnRow(),
                    _buildSignupBtn(),
                    ],
                   ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
