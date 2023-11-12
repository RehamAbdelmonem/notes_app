import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        alignment: Alignment.center,
        height: 50,
        child: Row(
          children: <Widget>[
            const Icon(
              Icons.info, 
              color: Colors.white, 
            ),
            const SizedBox(width: 10),
            Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 63, 61, 61),
      duration: const Duration(seconds: 5), 
      behavior: SnackBarBehavior.floating, 
      elevation: 6,
      margin: const EdgeInsets.all(10),
    ),
  );
}
