import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/features/auth/controller/auth_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider)!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: IconButton(
              iconSize: 4.0,
              onPressed: () {},
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                  user.profilePic,
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(child: Text(user.name)),
    );
  }
}
