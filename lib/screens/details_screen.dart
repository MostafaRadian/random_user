import 'package:flutter/material.dart';
import 'package:untitled1/models/user_model.dart';

class DetailsScreen extends StatelessWidget {
  final UserModel user;
  const DetailsScreen({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 8,
            shadowColor: Colors.black26,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network(
                      user.image,
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.broken_image,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // User info
                  Text(user.name, textAlign: TextAlign.center),
                  const SizedBox(height: 8),
                  Text(user.email, textAlign: TextAlign.center),
                  const SizedBox(height: 8),
                  Text("City: ${user.city}"),
                  const SizedBox(height: 8),
                  Text("Age: ${user.age}"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
