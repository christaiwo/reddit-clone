import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/features/auth/controller/auth_controller.dart';
import 'package:reddit_clone/features/home/drawers/community_list_drawer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider)!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => displayDrawer(context),
            icon: const Icon(Icons.menu),
          );
        }),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15.2,
                backgroundImage: NetworkImage(
                  user.profilePic,
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const CommunityListDrawer(),
      body: Center(child: Text('${user.name}')),
    );
  }
}
