import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 38,
      child: TextButton(
        child: Container(
          alignment: Alignment.center,
          child: const Text(
            'Зарегистрироваться',
            style: TextStyle(color: Color(0xFF225196), fontSize: 18),
          ),
        ),
        onPressed: () => {
          Navigator.of(context).pushNamed('/page21')
        },
      ),
    );
  }
}
