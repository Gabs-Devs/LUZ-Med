import 'package:flutter/material.dart';
import './login.dart';
import './widgets/BtnNext.dart';
import './widgets/InputField.dart';
import './widgets/InputFieldPswrd.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(94, 110, 165, 4),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              color: Color.fromRGBO(94, 110, 165, 50),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
              color: Color.fromRGBO(234, 239, 255, 20),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(64),
              ),
            ),
            child: SafeArea(
              top: false,
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Crie sua conta",
                        style: TextStyle(fontSize: 38, color: Color.fromRGBO(94, 110, 165, 50), fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          InputWidgetEmail(
                            emailLabelText: "Email",
                            emailHintText: "Exemplo@gmail.com",
                            ),
                          SizedBox(
                            height: 30,
                          ),
                          InputWidgetPswrd(
                            passwordLabelText: "Senha",
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          InputWidgetEmail(
                            emailLabelText: "CRM",
                            emailHintText: "CRM/[Seu estado] [Seu número]",
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Btnnext(buttonText: "ENTRAR"),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Já tem uma conta? ",
                            style: TextStyle(fontSize: 18, color: Color.fromRGBO(94, 110, 165, 50)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                               MaterialPageRoute(builder: (context) => LogIn())
                               );
                            },
                            child: Text(
                            "Entre nela!",
                            style: TextStyle(fontSize: 18, color: Color.fromRGBO(94, 110, 165, 50), fontWeight: FontWeight.bold),
                          ),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ))
        ],
      ),
    );
  }
}
