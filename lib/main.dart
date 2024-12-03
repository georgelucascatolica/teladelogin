import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'utils/firebase_opcoes.dart';
import 'telas/tela_login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: OpcoesFirebase.plataformaAtual,
  );


  await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);

  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autenticação Firebase',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TelaLogin(),
    );
  }
}
