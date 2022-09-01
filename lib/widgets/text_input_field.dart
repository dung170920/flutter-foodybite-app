import 'package:flutter/material.dart';
import 'package:flutter_foodbite_app/pallete.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {Key? key,
      this.icon,
      this.hint,
      this.action,
      this.type,
      required this.obscureText})
      : super(key: key);

  final String? hint;
  final TextInputAction? action;
  final IconData? icon;
  final TextInputType? type;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: kBodyText,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
            ),
            obscureText: obscureText,
            style: kBodyText,
            keyboardType: type,
            textInputAction: action,
          ),
        ),
      ),
    );
  }
}
