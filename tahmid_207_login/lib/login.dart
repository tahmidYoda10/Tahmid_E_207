import 'package:tahmid_207_login/register.dart';
import 'package:flutter/material.dart';
import 'package:tahmid_207_login/auth_service.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void signIn() async {
    final email = _emailController.text;
    final password = _passwordController.text;
 

    

    try {
      await AuthService().signInWithEmailPassword(email, password);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Login Successful")));
        return;
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Error:$e")));
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      
      body: Stack(
        children: [
          Positioned.fill(
            child: Image(image: AssetImage("img/bg.png"), fit: BoxFit.cover),
          ),
          SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: h*0.005 , horizontal: w*0.04),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:  Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: h*0.03,
            ),
          ),
        ),
      ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: w * 1,

              padding: EdgeInsets.symmetric(
                vertical: h * 0.07,
                horizontal: w * 0.03,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Welcome",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        fontSize: w * 0.06,
                      ),
                    ),
                    SizedBox(height: h * 0.04),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: h * 0.02),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    
                
                    SizedBox(height: h * 0.05),
                
                    Center(
                      child: SizedBox(
                        width: w * 0.5,
                        height: h * 0.06,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: signIn,
                          child:  Text(
                            "Sign In",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: h * 0.02),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: w*0.04, color: Colors.black87),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          },
                          child:  Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: w* 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ],
                    ),
                
                    SizedBox(height: h*0.3)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
