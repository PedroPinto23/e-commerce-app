import 'package:flutter/material.dart';
import 'package:loja_app/screens/SignUp_Screen.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem Vindo'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              'CRIAR CONTA',
              style: TextStyle(fontSize: 13),
            ),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'E-mail'),
              keyboardType: TextInputType.emailAddress,
              validator: (text) {
                if (text.isEmpty || !text.contains("@"))
                  return "Email Inválido!";
              },
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Senha'),
              obscureText: true,
              validator: (text) {
                if (text.isEmpty) {
                  return "Insira uma senha";
                } else if (text.length <= 6) {
                  return "senha precisa ter mais de 6 dígitos";
                }
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Text(
                  'esqueci minha senha',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 44,
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {}
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
