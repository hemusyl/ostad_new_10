import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Header Part
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Login with your phone and password'),
                SizedBox(
                  height: 20,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Phone Number'),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                            child: TextFormField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                } else {
                                  return null;
                                }
                              },
                            ),

                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(padding:EdgeInsets.all(10),
                          child:TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              } else if (value.length <= 6) {
                                return 'Password must be at least 6 characters';
                              } else {
                                return null;
                              }
                            },
                          ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                              width: 300,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if(_formKey.currentState!.validate()){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Login Successful')),
                                      );
                                    }
                                  },
                                  child: Text('Login'))),
                        ]))
              ],
            )),
      ),
    );
  }
}