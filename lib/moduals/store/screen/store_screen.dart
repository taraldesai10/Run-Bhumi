import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreScareen extends StatefulWidget {
  const StoreScareen({super.key});

  @override
  State<StoreScareen> createState() => _StoreScareenState();
}

class _StoreScareenState extends State<StoreScareen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Store Screen"),
      ),
    );
  }
}
