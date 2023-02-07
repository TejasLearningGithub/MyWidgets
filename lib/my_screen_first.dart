import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:my_text_form_field/widget/custom_drop_down.dart';

class MyScreenFirst extends StatefulWidget {
  const MyScreenFirst({super.key});

  @override
  State<MyScreenFirst> createState() => _MyScreenFirstState();
}

class _MyScreenFirstState extends State<MyScreenFirst> {
  var _formKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItemsForCommunication {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Mode - 1"), value: "mode1"),
      DropdownMenuItem(child: Text("Mode - 2"), value: "mode2"),
      DropdownMenuItem(child: Text("Mode - 3"), value: "mode3"),
      DropdownMenuItem(child: Text("Mode - 4"), value: "mode4"),
      DropdownMenuItem(child: Text("Mode - 5"), value: "mode5"),
      DropdownMenuItem(child: Text("Mode - 6"), value: "mode6"),
      DropdownMenuItem(child: Text("Mode - 7"), value: "mode7"),
      DropdownMenuItem(child: Text("Mode - 8"), value: "mode8"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Drop Down'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              MyCustomDropdown(
                  selectedValue: '',
                  myDropdownItem: dropdownItemsForCommunication,
                  myText: 'Communication'),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
