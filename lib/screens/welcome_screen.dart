import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/profile_screen.dart';
import 'package:flutter_application_3/services/profile_api.dart'; // Import the API service

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text('Welcome Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            iconSize: 45,
            color: const Color.fromARGB(255, 0, 1, 1),
            onPressed: () async {
              try {
                final profileDetail = await ApiService.fetchProfile();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(profileDetails: profileDetail),
                  ),
                );
              } catch (e) {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Failed to fetch profile data: $e')),
                );
              }
            },
          ),
        ],
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
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
              shadowColor: Colors.white,
              child: Container(
                width: 350,
                height: 100,
                padding: const EdgeInsets.all(20),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
