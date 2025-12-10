import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   TextEditingController firstController = TextEditingController();

  TextEditingController secondController = TextEditingController();

  double result = 0;

  // Global key for form state
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic Screen"),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,

          child: Column(
            children: [
              TextFormField(
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "e.g 3",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please first number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: secondController,
                keyboardType: TextInputType.number,
                obscureText: true, // Password style input
                decoration: InputDecoration(
                  labelText: "Second Number",
                  hintText: "e.g 4",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      double num1 = double.parse(firstController.text);
                      double num2 = double.parse(secondController.text);
                      result = num1 + num2;
                    });
                  }
                },
                child: const Text("Add"),
              ),
              const SizedBox(height: 20),
              Text(
                "Result: $result",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}