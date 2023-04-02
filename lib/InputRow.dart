import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Row inputRow(String locationType, void Function(String ?)? onLocationType,
    void Function(String ?)? onRoomNumber1,
    void Function(String ?)? onRoomNumber2) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton<String>(
          value: locationType,
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem(value: "near room", child: Text("near room")),
            DropdownMenuItem(value: "in room", child: Text("in room"))
          ],
          onChanged: onLocationType
        ),
        SizedBox(
          // height: 200,
            width: 100,
            child: TextFormField(
                autocorrect: false,
                maxLength: 4,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly],
                onChanged: onRoomNumber1
            )
        ),
        SizedBox(
          // height: 200,
            width: 100,
            child: TextFormField(
                autocorrect: false,
                maxLength: 4,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly],
                onChanged: onRoomNumber2
            )
        ),
      ]
  );
}