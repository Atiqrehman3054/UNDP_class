import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_learing/Course/constants/fonts.dart';
import 'package:ui_learing/Course/core/select_provider.dart';

class StatesButtons extends StatefulWidget {
  const StatesButtons({super.key});

  @override
  State<StatesButtons> createState() => _StatesButtonsState();
}

class _StatesButtonsState extends State<StatesButtons> {
  @override
        
  Widget build(BuildContext context) {

    final selectionProvider = Provider.of<SelectData>(context);

    log("Recall my all screen");
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text('Radio Button:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text("Male Student:"),
                Radio(
                    value: 1,
                    groupValue: selectionProvider.selectGender,
                    onChanged: selectionProvider.changeButtonValue),
                SizedBox(
                  width: 180,
                ),
                Text("Female Student:"),
                Radio(
                    value: 2,
                    groupValue: selectionProvider.selectGender,
                    onChanged: selectionProvider.changeButtonValue),
              ],
            ),
            height15,
            // Row(
            //   children: [
            //     Checkbox(
            //       value: _isChecked,
            //       onChanged: (bool? value) {
            //         setState(() {
            //           _isChecked = value!;
            //         });
            //       },
            //     ),
            //     Text("Remeber Me"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Text("Female Student"),
            //     Switch(
            //       value: _isSwitch,
            //       onChanged: (bool value) {
            //         setState(() {
            //           _isSwitch = value;
            //         });
            //       },
            //     ),
            //   ],
            // )
      
      
          ],
        ),
      ),
    );
  }
}
