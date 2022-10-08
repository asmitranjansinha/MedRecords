import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medrecords/config/const.dart';

void showSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(fontSize: 14),
    ),
    backgroundColor: color,
    duration: const Duration(seconds: 3),
    action: SnackBarAction(
      label: "Ok",
      onPressed: () {},
      textColor: Colors.white,
    ),
  ));
}

TextFormField inputFeild({hinttxt, icon, onChanged, fieldcontroller}) {
  return TextFormField(
    onChanged: onChanged,
    controller: fieldcontroller,
    decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: AppColor.darkGray,
        ),
        hintText: hinttxt,
        hintStyle: const TextStyle(color: Colors.blueGrey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide.none),
        filled: false,
        fillColor: Colors.white54),
  );
}
