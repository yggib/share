import 'package:connext/constants.dart';
import 'package:flutter/material.dart';
import 'package:easy_gradient_text/easy_gradient_text.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccount({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account ? " : "Already have an account ? ",
          style: TextStyle(
              color: kPrimaryDarkColor,
              fontSize: 16,
              fontFamily: 'Roboto-Light'),
        ),
        // GestureDetector(
        // onTap: press,
        //child: Text(
        //login ? "Sign Up" : "Sign In",
        //style: TextStyle(
        //color: kPrimaryColor,
        //fontWeight: FontWeight.bold,
        //fontSize: 24,
        //),
        //),
        //),

        TextButton(
          child: GradientText(
            text: login ? "SIGN UP" : "SIGN IN",
            colors: <Color>[
              Color.fromRGBO(72, 159, 163, 1),
              Color.fromRGBO(244, 173, 110, 1),
              Color.fromRGBO(191, 70, 117, 1)
            ],
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-Bold'),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
