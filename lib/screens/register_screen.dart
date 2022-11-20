import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/utilities/constants.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  bool _rememberMe = false;

  var size, height, width;

  Widget _buildNameTF() { 

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height/5,), 
        Text(
          'Full Name',
          style: kLabelStyle,
        ),
        

       SizedBox(height: height/60.0), 
        Container(
          
          alignment: Alignment.center,
          decoration: kBoxDecorationStyle,
          height: height/12.0,
          width: width/1.1,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0, ),
               prefixIcon: Icon(
                Icons.account_circle_rounded,
                color: Colors.black,
              ),
              hintText: 'Enter your Username',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: height/60.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: height/12.0,
          width: width/1.1,
          child: TextField(
            
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
             decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0, ),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
  

   Widget _buildCreatePassword() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(height: height/60.0),
        Text(
          'Password',
          style: kLabelStyle,
        ),

        SizedBox(height: height/60.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: height/12.0,
          width: width/1.1,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0, ),
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

  Widget _buildConfirmCreatePassword() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height/60.0),
        Text(
          'Confirm Password',
          style: kLabelStyle,
        ),
        SizedBox(height: height/60.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
         height: height/12.0,
          width: width/1.1,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0, ),
               prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: 'Confirm your Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginBtn() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      width: width/1.0,
      margin: EdgeInsets.all(25.0),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.pop(context);
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.black,
        child: Text(
          'REGISTER NOW',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            letterSpacing: 1.0,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
  Widget _buildSigninBtn() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return GestureDetector(
      onTap: () {
         Navigator.pop(context);
        },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Do have an Account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign In',
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
                    height: height/4,
                  ),
                  Container(
                   height: height/7,
                   width: width/1.4,
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
                    SizedBox(height: height/ 5000.0),
                    _buildNameTF(),
                    SizedBox(
                      height: height/50.0,
                    ),
                    _buildEmailTF(),
                    _buildCreatePassword(),
                    _buildConfirmCreatePassword(),
                    _buildLoginBtn(),
                    _buildSigninBtn(),
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
