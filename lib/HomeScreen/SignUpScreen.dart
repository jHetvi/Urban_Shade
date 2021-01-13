import 'package:flutter/material.dart';
import 'package:urban_shade/Global/Route/SlideRouteClass.dart';
import 'package:urban_shade/Global/Variables/colors.dart';
import 'package:urban_shade/Global/Widgets/buttons.dart';
import 'package:urban_shade/HomeScreen/SignInScreen.dart';

class SignUpScreen extends StatefulWidget {
  static final String routeName = "/SignUpScreen";
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.fill,
              color: bgColor(),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SafeArea(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: new ListView(
                shrinkWrap: true,
                children: <Widget>[
                  new Image.asset(
                    'assets/logo/URBAN_shade1.png',
                    height: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                        ? MediaQuery.of(context).size.width * .25
                        : MediaQuery.of(context).size.height * .20,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
                    margin: EdgeInsets.symmetric(
                      horizontal: (MediaQuery.of(context).orientation ==
                              Orientation.portrait)
                          ? 0
                          : 90,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: cardColor(),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x4d000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'BodoniModa',
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: lightColor(),
                            letterSpacing: 1.2,
                            shadows: [
                              Shadow(
                                color: const Color(0x4fffffff),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: lightColor(),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              SignUpButton.googleBackground(
                                text: "Google",
                                prefix:
                                    Image.asset("assets/images/google1.png"),
                                textStyle: TextStyle(
                                  fontFamily: 'BodoniModa',
                                  fontSize: (MediaQuery.of(context)
                                              .orientation ==
                                          Orientation.portrait)
                                      ? MediaQuery.of(context).size.width * .05
                                      : MediaQuery.of(context).size.height *
                                          .055,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                                height: (MediaQuery.of(context).orientation ==
                                        Orientation.portrait)
                                    ? size.height * .07
                                    : size.height * .13,
                              ),
                              SizedBox(height: 20.0),
                              SignUpButton.facebookBackground(
                                text: "Facebook",
                                prefix:
                                    Image.asset("assets/images/facebook1.png"),
                                textStyle: TextStyle(
                                  fontFamily: 'BodoniModa',
                                  color: whiteColor(),
                                  fontSize: (MediaQuery.of(context)
                                              .orientation ==
                                          Orientation.portrait)
                                      ? MediaQuery.of(context).size.width * .05
                                      : MediaQuery.of(context).size.height *
                                          .055,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                                height: (MediaQuery.of(context).orientation ==
                                        Orientation.portrait)
                                    ? size.height * .07
                                    : size.height * .13,
                              ),
                              SizedBox(height: 20.0),
                              SimpleButton.darkBackground(
                                text: "Register Here",
                                textStyle: TextStyle(
                                  fontFamily: 'BodoniModa',
                                  color: Colors.white,
                                  fontSize: (MediaQuery.of(context)
                                              .orientation ==
                                          Orientation.portrait)
                                      ? MediaQuery.of(context).size.width * .05
                                      : MediaQuery.of(context).size.height *
                                          .055,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                                height: (MediaQuery.of(context).orientation ==
                                        Orientation.portrait)
                                    ? size.height * .07
                                    : size.height * .13,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                  SlideRightRoute(page: SignInScreen()));
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                                text: 'Already have an account?',
                                style: TextStyle(
                                  fontFamily: 'BodoniModa',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: lightColor(),
                                  letterSpacing: 1.2,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Sign In',
                                    style: TextStyle(
                                      fontFamily: 'BodoniModa',
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor(),
                                      letterSpacing: 1.2,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
