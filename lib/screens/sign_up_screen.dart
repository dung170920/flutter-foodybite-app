import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_foodbite_app/pallete.dart';
import 'package:flutter_foodbite_app/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/images/register_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: CircleAvatar(
                          radius: size.width * 0.14,
                          backgroundColor: Colors.grey[400]?.withOpacity(0.4),
                          child: Icon(
                            FontAwesomeIcons.user,
                            color: kWhite,
                            size: size.width * 0.1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.05,
                      left: size.width * 0.56,
                      child: Container(
                        width: size.width * 0.1,
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kBlue,
                          border: Border.all(color: kWhite, width: 2),
                        ),
                        child: const Icon(
                          FontAwesomeIcons.arrowUp,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    const TextInputField(
                      action: TextInputAction.next,
                      hint: 'User Name',
                      icon: FontAwesomeIcons.user,
                      type: TextInputType.name,
                      obscureText: false,
                    ),
                    const TextInputField(
                      action: TextInputAction.next,
                      hint: 'Email',
                      icon: FontAwesomeIcons.envelope,
                      type: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                    const TextInputField(
                      action: TextInputAction.next,
                      hint: 'Password',
                      icon: FontAwesomeIcons.lock,
                      type: TextInputType.name,
                      obscureText: true,
                    ),
                    const TextInputField(
                      action: TextInputAction.done,
                      hint: 'Confirm Password',
                      icon: FontAwesomeIcons.lock,
                      type: TextInputType.name,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const RoundedButton(
                      name: 'Register',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account? ',
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/'),
                          child: Text(
                            'Login',
                            style: kBodyText.copyWith(
                                color: kBlue, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
