import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/profile_content.dart';

class Profile extends StatefulWidget {
  final Map<String, dynamic> profileDetails; 

  const Profile({super.key, required this.profileDetails});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text('Profile Screen'),
      ),
      drawer: const Drawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Colors.blueGrey,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Material(
              elevation: 10,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              child: Container(
                width: 350,
                padding: const EdgeInsets.all(20.0),
                child: ProfileContent(profileDetails: widget.profileDetails),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
