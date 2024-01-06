import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Welcome to Sign Up Page'),
              const SizedBox(height: 60),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'First Name',
                              prefixIcon: const Icon(
                                Icons.person,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Last Name',
                              prefixIcon: const Icon(
                                Icons.person,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        prefixIcon: const Icon(
                          Icons. person_pin_outlined
                        )
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        suffixIcon: const Icon(
                          Icons.alternate_email_sharp
                        )
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        suffixIcon: const Icon(
                            Icons.phone_android
                      ),
                    ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: const Icon(
                            Icons.remove_red_eye
                      ),
                    ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                        suffixIcon: const Icon(
                            Icons.password
                      ),
                    ),
                    ),
                    ///terms and Condition Apply
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value){}),
                        const SizedBox(width: 0.1,),
                        Text.rich(TextSpan(
                          children: [TextSpan(text: 'i agree to' ,style: Theme.of(context).textTheme.bodySmall),
                        ]),
                        ),
                      ],
                    )
                    /// Sign Up Button

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
