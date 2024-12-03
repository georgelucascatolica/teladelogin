import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'tela_home.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  Future<void> autenticarComGoogle(BuildContext context) async {
    try {

      final GoogleAuthProvider googleProvider = GoogleAuthProvider();

      // Substitua 'SEU_CLIENT_ID_AQUI' pelo Client ID da sua configuração Firebase.
      googleProvider.setCustomParameters({
        'client_id': '987654321098-lkjhgfdsaqwertyuiopzxcv.apps.googleusercontent.com',
      });


      final UserCredential credenciais =
      await FirebaseAuth.instance.signInWithPopup(googleProvider);


      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TelaHome()),
      );
    } catch (erro) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro na autenticação: $erro')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela de Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => autenticarComGoogle(context),
          child: const Text('Login com Google'),
        ),
      ),
    );
  }
}
