import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Validation Example"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Please enter your email";
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                    return "Please enter a valid email address";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Please enter your password";
                  }
                  if (value.length < 6){
                    return "Password must be at least 6 characters long";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Processing Data")),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),  
    );
  }
}
