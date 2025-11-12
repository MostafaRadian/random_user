import 'package:flutter/material.dart';
import 'package:untitled1/models/user_model.dart';
import 'package:untitled1/screens/details_screen.dart';

class UserItem extends StatelessWidget {
  final UserModel user;
  const UserItem({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(user: user)),
      ),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(user.image)),
          title: Text(user.name),
          subtitle: Text(user.email),
        ),
      ),
    );
  }
}
