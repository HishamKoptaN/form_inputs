import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:form_inputs_example/core/di/dependency_injection.dart';
import 'package:formz/formz.dart';
import 'bloc/inputs_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
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
        brightness: Brightness.dark,
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
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<InputsBloc, InputsState>(
          bloc: getIt<InputsBloc>(),
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const SizedBox.shrink(),
              loaded: (state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      onChanged: (v) {
                        getIt<InputsBloc>().add(
                          InputsEvent.dataChanged(
                            inputs: state.inputs.copyWith(
                              link: LinkInput.dirty(value: v),
                            ),
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        labelText: 'Link',
                        hintText: 'Enter your link',
                        errorText: state.inputs.link?.error?.message,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      validator: (_) {
                        return state.inputs.link?.error?.message;
                      },
                    ),
                    TextFormField(
                      onChanged: (v) {
                        getIt<InputsBloc>().add(
                          InputsEvent.dataChanged(
                            inputs: state.inputs.copyWith(
                              name: GenericFormzInput.dirty(
                                value: v,
                                minLength: 3,
                                maxLength: 15,
                                errorMessages: const {
                                  GenericValidationError.empty:
                                      'يرجى إدخال الاسم',
                                  GenericValidationError.short:
                                      'الاسم قصير جدًا',
                                  GenericValidationError.long:
                                      'الاسم طويل جدًا',
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter your name',
                        errorText: state.inputs.name?.errorMessage,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      validator: (_) {
                        return state.inputs.name?.errorMessage;
                      },
                    ),
                    TextFormField(
                      onChanged: (v) {
                        getIt<InputsBloc>().add(
                          InputsEvent.dataChanged(
                            inputs: state.inputs.copyWith(
                              email: EmailInput.dirty(v, const ['gmail.com']),
                            ),
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        errorText: state.inputs.email?.errorMessage,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      validator: (_) {
                        return state.inputs.email?.errorMessage;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      onChanged: (v) {
                        getIt<InputsBloc>().add(
                          InputsEvent.dataChanged(
                            inputs: state.inputs.copyWith(
                              password: PasswordInput.dirty(v, true),
                            ),
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        errorText: state.inputs.password?.errorMessage,
                      ),
                      obscureText: true,
                      validator: (_) => state.inputs.password?.errorMessage,
                    ),
                    TextFormField(
                      onChanged: (v) {
                        getIt<InputsBloc>().add(
                          InputsEvent.dataChanged(
                            inputs: state.inputs.copyWith(
                              confirmPassword: ConfirmPasswordInput.dirty(
                                value: v,
                                password: state.inputs.password?.value ?? '',
                              ),
                            ),
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Confirm your password',
                        errorText: state.inputs.confirmPassword?.errorMessage,
                      ),
                      obscureText: true,
                      validator: (_) {
                        return state.inputs.confirmPassword?.errorMessage;
                      },
                    ),
                    TextFormField(
                      onChanged: (value) {
                        getIt<InputsBloc>().add(
                          InputsEvent.dataChanged(
                            inputs: state.inputs.copyWith(
                              phoneNumber: PhoneNumberInput.dirty(value),
                            ),
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Enter your phone number',
                        errorText: state.inputs.phoneNumber?.error?.name,
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (_) {
                        return state.inputs.phoneNumber
                            ?.validator(state.inputs.phoneNumber?.value ?? '')
                            ?.name;
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Checkbox(
                          value: state.inputs.termsAccepted?.value ?? false,
                          onChanged: (value) {
                            getIt<InputsBloc>().add(
                              InputsEvent.dataChanged(
                                inputs: state.inputs.copyWith(
                                  termsAccepted: BoolFormzInput.dirty(value!),
                                ),
                              ),
                            );
                          },
                        ),
                        const Expanded(
                          child: Text('I accept the terms and conditions'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: state.formzSubmissionStatus ==
                              FormzSubmissionStatus.inProgress
                          ? null
                          : () {},
                      child: Text(
                        state.formzSubmissionStatus.isSuccess
                            ? "valid"
                            : "invalid",
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
