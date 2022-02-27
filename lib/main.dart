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
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            const RadioButtonSingleWidget(),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 50),
              child: SizedBox(
                height: 50,
                width: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Register"),
                ),
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
        ),
      ),
    );
  }
}

class RadioButtonSingleWidget extends StatefulWidget {
  const RadioButtonSingleWidget({Key? key}) : super(key: key);

  @override
  _RadioButtonSingleWidgetState createState() =>
      _RadioButtonSingleWidgetState();
}

class _RadioButtonSingleWidgetState extends State<RadioButtonSingleWidget> {
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
