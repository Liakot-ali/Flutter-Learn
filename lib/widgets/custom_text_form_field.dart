import 'package:flutter/material.dart';
class customTextField extends StatelessWidget{
  dynamic message;
  String label, hint, initText;
  String type;
  int maxLength;
  customTextField(this.label, this.hint, this.initText, this.maxLength, this.type);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        label: Text(label),
        hintText: hint,
        contentPadding: EdgeInsets.all(5),
      ),
      keyboardType: TextInputType.name,
      initialValue: initText,
      maxLength: maxLength,
      cursorHeight: 17.0,
      onChanged: (String val){
        message = val;
      },
    );
    //return message;
  }
}