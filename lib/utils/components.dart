import 'package:flutter/material.dart';

Container SocialSignupButton(String _with, String icon) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
    child: ElevatedButton(
      onPressed: () => {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => Colors.black,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(_with, textAlign: TextAlign.center),
          Image.asset(icon),
        ],
      ),
    ),
  );
}

Container CustomField(String Name, Function action) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Name,
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 15, right: 15),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            // hintText: "0",
          ),
          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          onChanged: (value) => action(value),
        ),
      ],
    ),
  );
}
