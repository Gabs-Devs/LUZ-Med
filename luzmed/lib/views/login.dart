import 'package:flutter/material.dart';
import './SignIn.dart';
import './widgets/BtnNext.dart';
import './widgets/InputField.dart';
import './widgets/InputFieldPswrd.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(94, 110, 165, 4),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: Color.fromRGBO(94, 110, 165, 50),
            ),
            child: Center(
              child: Text(
                "LuzMed",
                style: TextStyle(
                    fontSize: 38, color: Color.fromRGBO(234, 239, 255, 20)),
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
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
                        "Entre na sua conta",
                        style: TextStyle(
                            fontSize: 38,
                            color: Color.fromRGBO(94, 110, 165, 50),
                            fontWeight: FontWeight.bold),
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
                            height: 40,
                          ),
                          Btnnext(buttonText: "ENTRAR"),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Não tem uma conta? ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(94, 110, 165, 50)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()),
                              );
                            },
                            child: Text(
                              "Crie uma!",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(94, 110, 165, 50),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
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
