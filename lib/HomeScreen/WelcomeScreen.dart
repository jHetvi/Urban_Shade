import 'package:flutter/material.dart';
import 'package:urban_shade/Global/Route/SlideRouteClass.dart';
import 'package:urban_shade/Global/Widgets/buttons.dart';
import 'package:urban_shade/Global/Variables/colors.dart';
import 'package:urban_shade/HomeScreen/SignInScreen.dart';
import 'package:urban_shade/HomeScreen/SignUpScreen.dart';

class WelcomeScreen extends StatefulWidget {
  static final String routeName = "/WelcomeScreen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
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
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Image.asset(
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
                          'Welcome!',
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                            style: TextStyle(
                              fontFamily: 'BodoniModa',
                              fontSize: 20,
                              color: lightColor(),
                              letterSpacing: 0.6,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        SlideButton.lightBackground(
                            text: "Sign In",
                            textStyle: TextStyle(
                              fontFamily: 'BodoniModa',
                              color: Colors.white,
                              fontSize: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .07
                                  : MediaQuery.of(context).size.height * .06,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                            width: (MediaQuery.of(context).orientation ==
                                    Orientation.portrait)
                                ? MediaQuery.of(context).size.width * .8
                                : MediaQuery.of(context).size.height * .9,
                            height: (MediaQuery.of(context).orientation ==
                                    Orientation.portrait)
                                ? MediaQuery.of(context).size.height * .08
                                : MediaQuery.of(context).size.height * .13,
                            action: () {
                              setState(() {
                                Navigator.push(context,
                                    SlideRightRoute(page: SignInScreen()));
                              });
                            }),
                        SizedBox(
                          height: 20.0,
                        ),
                        SlideButton.darkBackground(
                            text: "Sign Up",
                            textStyle: TextStyle(
                              fontFamily: 'BodoniModa',
                              color: Colors.white,
                              fontSize: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .07
                                  : MediaQuery.of(context).size.height * .06,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                            width: (MediaQuery.of(context).orientation ==
                                    Orientation.portrait)
                                ? MediaQuery.of(context).size.width * .8
                                : MediaQuery.of(context).size.height * .9,
                            height: (MediaQuery.of(context).orientation ==
                                    Orientation.portrait)
                                ? MediaQuery.of(context).size.height * .08
                                : MediaQuery.of(context).size.height * .13,
                            action: () {
                              setState(() {
                                Navigator.push(context,
                                    SlideRightRoute(page: SignUpScreen()));
                              });
                            }),
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
