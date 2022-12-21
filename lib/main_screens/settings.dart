import 'package:fetawa_flutter/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 15),
          surfaceTintColor: secondaryLight,
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("phone"),
                  Text("0923610732")
                ],
              ),
              Divider(height: 1, color: primary,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("phone"),
                  Text("0923610732")
                ],
              ),
              Divider(height: 1, color: primary,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("phone"),
                  Text("0923610732")
                ],
              ),
              Divider(height: 1, color: primary,),
            ],
          ),
        )
      ],
    );
  }
}
