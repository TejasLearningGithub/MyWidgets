import 'package:control_style/decorated_input_border.dart';
import 'package:flutter/material.dart';

class MyTextFormFieldSecond extends StatefulWidget {
  const MyTextFormFieldSecond({super.key});

  @override
  State<MyTextFormFieldSecond> createState() => _MyTextFormFieldSecondState();
}

class _MyTextFormFieldSecondState extends State<MyTextFormFieldSecond> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Form Field'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter something';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  border: DecoratedInputBorder(
                    child: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    shadow: const [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                          offset: Offset(0, 4))
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
