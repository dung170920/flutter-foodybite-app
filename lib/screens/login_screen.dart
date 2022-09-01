import 'package:flutter/material.dart';
import 'package:flutter_foodbite_app/pallete.dart';
import 'package:flutter_foodbite_app/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(
          image: 'assets/images/login_bg.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Flexible(
                child: Center(
                  child: Text(
                    'Foodybite',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const TextInputField(
                    action: TextInputAction.next,
                    hint: 'Email',
                    icon: FontAwesomeIcons.envelope,
                    type: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  const TextInputField(
                    action: TextInputAction.done,
                    hint: 'Password',
                    icon: FontAwesomeIcons.lock,
                    type: TextInputType.name,
                    obscureText: true,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'forgot-password'),
                    child: const Text(
                      'Forgot Password?',
                      style: kBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const RoundedButton(
                    name: 'Login',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'sign-up'),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: kWhite,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Create new Account',
                    style: kBodyText,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        )
      ],
    );
  }
}
