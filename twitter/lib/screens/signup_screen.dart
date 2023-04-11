import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();

  @override
  void initState() {
    _nameController = _nameController;
    _passwordController = _passwordController;
    _emailController = _emailController;
    _confirmController = _confirmController;

    super.initState();
  }

  @override
  void dispose() {
    _nameController = _nameController;
    _emailController = _emailController;
    _passwordController = _passwordController;
    _confirmController = _confirmController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
          elevation: 0,
          leading: BackButton(
            color: Colors.blue,
            onPressed: (() => Navigator.of(context).pop()),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Sing Up',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26
            )
          )
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 37,
              ),
              SizedBox(
            width: 90,
            height: 90,
            child: Image.network(
            'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
            ),
          ),
              SizedBox(
                height: 27,
              ),
              CustomEntryField(
                hint: 'Enter Name',
                controller: _nameController,
                isPassword: false,
              ),
              CustomEntryField(
                hint: 'Enter Email',
                controller: _emailController,
                isPassword: false,
              ),
              CustomEntryField(
                hint: 'Enter Password',
                controller: _passwordController,
                isPassword: true,
              ),
              CustomEntryField(
                hint: 'Confirm Password',
                controller: _confirmController,
                isPassword: true,
              ),
              Center(
                child:
                    CustomFlatButton(label: "Sing up", onPressed: () => null),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*void signUpUser() async {
    context.read<Auth>().signUpWithEmail(
          context: context,
          email: _emailController.text,
          password: _passwordController.text,
        );
    Navigator.pushNamed(context, '/homescreen');
  }*/
}
