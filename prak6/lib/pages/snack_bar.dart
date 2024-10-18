import 'package:flutter/material.dart';

class SnackbarPage extends StatefulWidget {
  const SnackbarPage({super.key});

  @override
  State<SnackbarPage> createState() => _SnackbarPageState();
}

class _SnackbarPageState extends State<SnackbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 6 Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final mySnackBar =  SnackBar(
              content: Text("Berhasil membuat SnackBar"),
              duration: Duration(seconds: 3),
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.amberAccent,
            );
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          },
          child: Text(
            "Tampilkan SnackBar",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
