import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/providers/user_provider.dart';
import 'package:untitled1/widgets/user_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Consumer<UserProvider>(
        builder: (context, value, child) {
          final userList = value.model?.users;
          if (userList == null) {
            value.getUsers();
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) => UserItem(user: userList[index]),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UserProvider>().getUsers();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
