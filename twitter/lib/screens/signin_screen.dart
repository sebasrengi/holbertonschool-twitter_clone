import 'package:flutter/material.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';


class SignIn extends StatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);


  @override
  State<SignIn> createState() => InState();
}

class InState extends State<SignIn> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext action) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
              GestureDetector(
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.push(
                      action,
                      MaterialPageRoute(builder: (action) => const HomeScreen(),
                      ),
                    )
                  },
                  child: Text(
                    'Submit', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,
                    ),),),),
              GestureDetector(
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      action,
                      MaterialPageRoute(builder: (action) => const SignUp(),
                      ),
                    )
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 150, 255, 1.0)
                    ),),),),
              GestureDetector(
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      action,
                      MaterialPageRoute(builder: (action) => const ForgotPassword(),
                      ),
                    )
                  },
                  child: Text(
                    'Forget Password?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 150, 255, 1.0)
                    ),),),),],),),),);
  }
}
