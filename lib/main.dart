import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // 1. Importa el paquete
import 'firebase_options.dart'; // 2. Importa el archivo generado

void main() async {
  // 3. Asegura que los enlaces de Flutter estén inicializados
  WidgetsFlutterBinding.ensureInitialized();

  // 4. Inicializa Firebase usando la configuración de la plataforma actual
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alba Cuidador',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alba Cuidador - Firebase conectado'),
        ),
        body: const Center(
          child: Text(
            '¡Firebase inicializado con éxito!',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}