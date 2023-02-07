import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MyCustomDropdown extends StatefulWidget {
  String? selectedValue;
  String? myText;
  List<DropdownMenuItem<String>> myDropdownItem;
  MyCustomDropdown(
      {super.key,
      required this.selectedValue,
      required this.myDropdownItem,
      required this.myText});

  @override
  State<MyCustomDropdown> createState() => _MyCustomDropdownState();
}

class _MyCustomDropdownState extends State<MyCustomDropdown> {
  var myDropDownErrorText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurStyle: BlurStyle.outer,
            spreadRadius: 15,
          ),
        ],
      ),
      child: DropdownButtonFormField2(
        //buttonElevation: 25,
        buttonHeight: 20,
        //itemHeight: 30,

        //buttonPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        // buttonDecoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(25),
        //   //shape: BoxShape.circle,
        //   boxShadow: const [
        //     BoxShadow(
        //       color: Colors.black,
        //       blurStyle: BlurStyle.outer,
        //       blurRadius: 9,
        //       spreadRadius: 5,
        //       offset: Offset(0, 9),
        //     ),
        //   ],
        //   //borderRadius: BorderRadius.circular(25),
        // ),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.blue, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
            )),

        hint: Text(
          'Select Your ${widget.myText}',
          style: const TextStyle(fontSize: 14),
        ),
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.black45,
        ),
        iconSize: 30,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: widget.myDropdownItem,
        dropdownMaxHeight: 160,
        validator: (value) {
          if (value == null) {
            return 'Please Select ${widget.myText}';
          }
        },
        onChanged: (value) {},
        onSaved: (value) {
          widget.selectedValue = value.toString();
        },
        scrollbarAlwaysShow: true,
        scrollbarThickness: 5,
      ),
    );
  }
}
