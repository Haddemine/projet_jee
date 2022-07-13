import 'package:flutter/material.dart';

Widget defaultButton({
  Color color = Colors.cyan,
  required Function function,
  required String text,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        child: MaterialButton(
          color: color,
          onPressed: () {
            function();
          },
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),

        ),
      ),
    );

Widget defaultTextField({
  required TextEditingController controller,
  bool isPassword = false,
  bool isClickable = true,
  required TextInputType type,
  Function? onSubmit,
  Function? onTap,
  required String text,
  required IconData prefix,
  IconData? suffix,
  Function? suffixFunction,
  String textForUnValid = 'this element is required',
  //required Function validate,
}) =>
    Container(
      height: 80,
      decoration: BoxDecoration(),
      child: TextFormField(
        enableSuggestions: true,
        autocorrect: true,
        controller: controller,
        enabled: isClickable,
        onTap: () {
          onTap!();
        },
        validator: (value) {
          if (value!.isEmpty) {
            return textForUnValid;
          }
          return null;
        },
        onChanged: (value) {},
        onFieldSubmitted: (value) {
          onSubmit!(value);
        },
        obscureText: isPassword ? true : false,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: text,
          prefixIcon: Icon(prefix),
          suffixIcon: IconButton(
            onPressed: () {
              suffixFunction!();
            },
            icon: Icon(suffix),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: const BorderSide(),
              gapPadding: 4),
        ),
      ),
    );



