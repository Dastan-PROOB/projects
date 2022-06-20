import 'package:flutter/material.dart';


class ConfirmPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 45,
      child: Container(
        alignment: Alignment.center,
        width: width/1.25,
        child: TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10),),
              borderSide: BorderSide(color: Color(0xFF225196),),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10),),
              borderSide: BorderSide(color: Color(0xFF225196),width: 1),
            ),
            prefixIcon: Icon(Icons.lock_outline_sharp,color: Color(0xFF022B69),),
            hintText: 'Повторите пароль',
            hintStyle: TextStyle(
                color: Color(0xFF225196),
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}
