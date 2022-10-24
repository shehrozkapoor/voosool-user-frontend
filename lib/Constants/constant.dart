import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// TODO Password TextFormField
passwordTextField(String Name, Function action) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5.0,),
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.remove_red_eye, color: Colors.white,),
            contentPadding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder:  OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(50),
            ),
              enabledBorder:  OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              )
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

// TODO Confirm Password TextFormField
confirmPassword(String Name, Function action) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5.0,),
        TextFormField(
          decoration: InputDecoration(
              suffixIcon: const Icon(Icons.remove_red_eye, color: Colors.white,),
              contentPadding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder:  OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              )
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