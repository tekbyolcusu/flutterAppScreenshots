import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/utilities/constants.dart';
import 'package:flutter_login_ui/screens/resetpassword_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}
class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // ignore: unused_field
  bool _rememberMe = false;

  var height, width, size;

  Widget _buildEmailTF() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        SizedBox(height: height/4),
        Container(
          alignment: Alignment.center,
          decoration: kBoxDecorationStyle,
          height: height/8,
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
  Widget _buildLoginBtn() {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      width: width/1,
      margin: EdgeInsets.all(25.0),
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => ResetScreen()));
      },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.black,
        
        child: Text(
          'SEND',
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
                    height: height/3, // logo yükseklik
                  ),
                  Container(
                    width: width/1.3,
                    height: height/6,
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
                   // SizedBox(height: 10.0),
                    SizedBox(
                      height: height/20,
                    ),
                    _buildEmailTF(),
                    _buildLoginBtn(),
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