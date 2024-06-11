import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: Colors.black,
                ),
                title: Text("JaneDoe"),
                subtitle: Text(
                  "janedoe@gmail.com",
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
