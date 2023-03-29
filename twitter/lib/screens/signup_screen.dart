import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';


class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => UState();
}

class UState extends State<SignUp> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _nameController;
  late TextEditingController _confirmController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    _confirmController = TextEditingController();
    super.initState();
    final _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext action) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.blue,
          onPressed: () => {
            Navigator.pop(action),
          }
        ),
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.black,),),
        backgroundColor: Colors.white,
      ),
      body: GestureDetector(
        child: Form(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CustomEntryField(
                    hint: 'Enter name',
                    controller: _nameController,
                    isPassword: false,
                  ),
                  CustomEntryField(
                    hint: 'Enter email',
                    controller: _emailController,
                    isPassword: false,
                  ),
                  CustomEntryField(
                    hint: 'Enter password',
                    controller: _passwordController,
                    isPassword: true,
                  ),
                  CustomEntryField(
                    hint: 'Confirm password',
                    controller: _confirmController,
                    isPassword: false,
                  ),
                  CustomFlatButton(
                    label: 'Sign up',
                    onPressed: () => null,
                  ),],),)),),
    );
  }
}
