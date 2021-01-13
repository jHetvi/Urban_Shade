import 'package:flutter/material.dart';
import 'package:urban_shade/Global/Route/SlideRouteClass.dart';
import 'package:urban_shade/Global/Variables/regex.dart';
import 'package:urban_shade/Global/Widgets/CustomTextField.dart';
import 'package:urban_shade/Global/Widgets/TextKeyDynamicValueWidget.dart';
import 'package:urban_shade/Global/Variables/colors.dart';
import 'package:urban_shade/Global/Widgets/buttons.dart';
import 'package:urban_shade/HomeScreen/SignUpScreen.dart';
import 'package:urban_shade/HomeScreen/WelcomeScreen.dart';

class SignInScreen extends StatefulWidget {
  static final String routeName = "/SignInScreen";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Size size;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool nullCheck() {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

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
                          'Sign In',
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Form(
                                key: _formKey,
                                child: ListBody(
                                  children: [
                                    TextKeyDynamicValueWidget(
                                      label: "Email",
                                      value: CustomTextField.email(
                                        validator: (value) {
                                          if (value.isEmpty)
                                            return 'Please enter email!';
                                          if (emailRegex.hasMatch(value))
                                            return 'Please enter valid email!';
                                          return null;
                                        },
                                        controller: _emailController,
                                        /* disabled:
                                        isGoogleOrFacebookUser ? true : false, */
                                        hint: "Eg: urbanshade03@gnet.com",
                                      ),
                                    ),
                                    TextKeyDynamicValueWidget2(
                                      leftLabel: "Password",
                                      rightLabel:
                                          "                     Forgot Password?",
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                WelcomeScreen.routeName);
                                      },
                                      value: Column(
                                        children: [
                                          CustomTextField.password(
                                            validator: (value) {
                                              if (value.isEmpty)
                                                return 'Please enter password!';
                                              if (value.length < 10)
                                                return 'Password is too short!';
                                              if (!passwordRegex
                                                  .hasMatch(value))
                                                return "Password must be more than 10 charcaters and must contain 1 \n uppercase, 1 lowecase ,1 number,\n and special character";
                                              return null;
                                            },
                                            controller: _passwordController,
                                            hint: "Enter Password",
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          60.0, 20.0, 60.0, 20.0),
                                      child: SimpleButton.darkBackground(
                                        text: "Sign In",
                                        textStyle: TextStyle(
                                          fontFamily: 'BodoniModa',
                                          color: Colors.white,
                                          fontSize: (MediaQuery.of(context)
                                                      .orientation ==
                                                  Orientation.portrait)
                                              ? MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .05
                                              : MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .055,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.right,
                                        height: (MediaQuery.of(context)
                                                    .orientation ==
                                                Orientation.portrait)
                                            ? size.height * .07
                                            : size.height * .13,
                                        onTap: null,
                                      ),
                                    ),
                                  ],
                                ))),
                        Text(
                          'OR Continew with...',
                          style: TextStyle(
                            fontFamily: 'BodoniModa',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: whiteColor(),
                            letterSpacing: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                                onPressed: null,
                                child: Image.asset(
                                  "assets/images/google1.png",
                                  height: 50.0,
                                )),
                            FlatButton(
                                onPressed: null,
                                child: Image.asset(
                                  "assets/images/facebook1.png",
                                  height: 50.0,
                                ))
                          ],
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                  SlideRightRoute(page: SignUpScreen()));
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                                text: 'Don\'t have an account?',
                                style: TextStyle(
                                  fontFamily: 'BodoniModa',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: lightColor(),
                                  letterSpacing: 1.2,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Sign Up',
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
