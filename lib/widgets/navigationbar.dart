import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/themes.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            color: Theme.of(context).colorScheme.onSecondary,
            onPressed: () {
              context.go("/home");
            },
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          IconButton(
            color: Theme.of(context).colorScheme.onSecondary,
            onPressed: () {
              context.go("/search");
            },
            icon: Icon(
              CupertinoIcons.search,
            ),
          ),
          IconButton(
            color: Theme.of(context).colorScheme.onSecondary,
            onPressed: () {
              context.push("/add");
            },
            icon: Icon(
              CupertinoIcons.add_circled,
            ),
          ),
          IconButton(
            color: Theme.of(context).colorScheme.onSecondary,
            onPressed: () {
              context.go("/profile");
            },
            icon: Icon(
              CupertinoIcons.person,
            ),
          ),
        ],
      ),
    );
  }
}
