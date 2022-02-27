import 'package:flutter/material.dart';

void main() => runApp(const RegisterPage());

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: ListView(
          children: const [
            TextFieldsClass(),
            RadioButtonsClass(),
            ButtonsClass(),
          ],
        ),
      ),
    );
  }
}

class RadioButtonsClass extends StatefulWidget {
  const RadioButtonsClass({Key? key}) : super(key: key);

  @override
  _RadioButtonsClassState createState() => _RadioButtonsClassState();
}

class _RadioButtonsClassState extends State<RadioButtonsClass> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile<int>(
            value: 1,
            groupValue: selectedValue,
            title: const Text("Customer"),
            subtitle: const Text("Buy products from the app"),
            onChanged: (value) => setState(() => selectedValue = 1),
          ),
          RadioListTile<int>(
            value: 2,
            groupValue: selectedValue,
            title: const Text("Vendor"),
            subtitle: const Text("Sell products on the app"),
            onChanged: (value) => setState(() => selectedValue = 2),
          ),
        ],
      ),
    );
  }
}

class TextFieldsClass extends StatelessWidget {
  const TextFieldsClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(12),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Username",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonsClass extends StatefulWidget {
  const ButtonsClass({Key? key}) : super(key: key);

  @override
  State<ButtonsClass> createState() => _ButtonsClassState();
}

class _ButtonsClassState extends State<ButtonsClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Register"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: TextButton(
            onPressed: () {},
            child: const Text("Already have an account? Sign In."),
          ),
        ),
      ],
    );
  }
}
