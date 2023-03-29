import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  State<ForgotPassword> createState() => FState();
}

class FState extends State<ForgotPassword> {
  late TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
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
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Forget Password',
                style: TextStyle(fontWeight: FontWeight.bold,),),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Enter your email address below to receive password reset instruction.',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              CustomEntryField(
                hint: 'Enter email',
                controller: _emailController,
                 isPassword: false,
              ),
              CustomFlatButton(
                label: 'Submit',
                onPressed: () => null,
              ),],),),),);
  }
}
