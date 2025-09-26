import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Inputs Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();

  EmailInput email = const EmailInput.pure();
  PasswordInput password = const PasswordInput.pure();
  ConfirmPasswordInput confirmPassword = const ConfirmPasswordInput.pure();
  PhoneNumberInput phoneNumber = const PhoneNumberInput.pure();
  bool termsAccepted = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _onEmailChanged(String value) {
    setState(() {
      email = EmailInput.dirty(value);
    });
  }

  void _onPasswordChanged(String value) {
    setState(() {
      password = PasswordInput.dirty(value);
      if (confirmPassword.value.isNotEmpty) {
        confirmPassword = ConfirmPasswordInput.dirty(
          password: password.value,
          value: confirmPassword.value,
        );
      }
    });
  }

  void _onConfirmPasswordChanged(String value) {
    setState(() {
      confirmPassword = ConfirmPasswordInput.dirty(
        password: password.value,
        value: value,
      );
    });
  }

  void _onPhoneChanged(String value) {
    setState(() {
      phoneNumber = PhoneNumberInput.dirty(value);
    });
  }

  void _onTermsChanged(bool? value) {
    setState(() {
      termsAccepted = value ?? false;
    });
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with registration
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      // TODO: Implement registration logic
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Email Input
              // TextFormField(
              //   controller: _emailController,
              //   decoration: InputDecoration(
              //     labelText: 'Email',
              //     hintText: 'Enter your email',
              //     errorText: email.invalid ? 'Please enter a valid email' : null,
              //   ),
              //   keyboardType: TextInputType.emailAddress,
              //   onChanged: _onEmailChanged,
              //   validator: (_) => email.validator(email.value),
              // ),
              // const SizedBox(height: 16),

              // // Password Input
              // TextFormField(
              //   controller: _passwordController,
              //   decoration: InputDecoration(
              //     labelText: 'Password',
              //     hintText: 'Enter your password',
              //     errorText: password.invalid ? 'Password must be at least 8 characters' : null,
              //   ),
              //   obscureText: true,
              //   onChanged: _onPasswordChanged,
              //   validator: (_) => password.validator(password.value),
              // ),
              // const SizedBox(height: 16),

              // // Confirm Password Input
              // TextFormField(
              //   controller: _confirmPasswordController,
              //   decoration: InputDecoration(
              //     labelText: 'Confirm Password',
              //     hintText: 'Confirm your password',
              //     errorText: confirmPassword.invalid ? 'Passwords do not match' : null,
              //   ),
              //   obscureText: true,
              //   onChanged: _onConfirmPasswordChanged,
              //   validator: (_) => confirmPassword.validator(confirmPassword.value),
              // ),
              // const SizedBox(height: 16),

              // // Phone Number Input
              // TextFormField(
              //   controller: _phoneController,
              //   decoration: InputDecoration(
              //     labelText: 'Phone Number',
              //     hintText: 'Enter your phone number',
              //     errorText: phoneNumber.invalid ? 'Please enter a valid phone number' : null,
              //   ),
              //   keyboardType: TextInputType.phone,
              //   onChanged: _onPhoneChanged,
              //   validator: (_) => phoneNumber.validator(phoneNumber.value),
              // ),
              // const SizedBox(height: 16),

              // // Terms and Conditions Checkbox
              // Row(
              //   children: [
              //     Checkbox(
              //       value: termsAccepted,
              //       onChanged: _onTermsChanged,
              //     ),
              //     const Expanded(
              //       child: Text('I accept the terms and conditions'),
              //     ),
              //   ],
              // ),

              // const SizedBox(height: 24),

              // // Submit Button
              // ElevatedButton(
              //   onPressed:
              //       email.valid &&
              //       password.valid &&
              //       confirmPassword.valid &&
              //       phoneNumber.valid &&
              //       termsAccepted
              //           ? _onSubmit
              //           : null,
              //   child: const Text('Register'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
