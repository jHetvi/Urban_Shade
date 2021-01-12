import 'package:flutter/material.dart';
import 'package:urban_shade/Global/buttons.dart';
import 'package:urban_shade/Global/colors.dart';

class HomeScreen extends StatefulWidget {
  static final String routeName = "/HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: new ListView(
                children: <Widget>[
                  new Image.asset(
                    'assets/logo/URBAN_shade1.png',
                    height: MediaQuery.of(context).size.width / 4,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
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
                        CustomButton.lightBackground(
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
                            width: size.width * .8,
                            height: size.height * .09,
                            onTap: null),
                        SizedBox(
                          height: 20.0,
                        ),
                        CustomButton.darkBackground(
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
                            width: size.width * .8,
                            height: size.height * .09,
                            onTap: null),
                      ],
                    ),
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
