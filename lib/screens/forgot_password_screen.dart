import 'package:flutter/material.dart';
import 'package:flutter_foodbite_app/pallete.dart';
import 'package:flutter_foodbite_app/widgets/background_image.dart';
import 'package:flutter_foodbite_app/widgets/rounded_button.dart';
import 'package:flutter_foodbite_app/widgets/text_input_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/images/login_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: const Text(
              'Forgot Password',
              style: kBodyText,
            ),
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      child: const Text(
                        'Enter your email we will send instruction to reset your password',
                        style: kBodyText,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const TextInputField(
                      obscureText: false,
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      action: TextInputAction.done,
                      type: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const RoundedButton(name: 'Send')
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
