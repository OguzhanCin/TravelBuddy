import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/themes.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            color: colors["onSecondary"],
            onPressed: () {
              context.go("/home");
            },
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          IconButton(
            color: colors["onSecondary"],
            onPressed: () {
              context.go("/search");
            },
            icon: Icon(
              CupertinoIcons.search,
            ),
          ),
          IconButton(
            color: colors["onSecondary"],
            onPressed: () {
              context.push("/add");
            },
            icon: Icon(
              CupertinoIcons.add_circled,
            ),
          ),
          IconButton(
            color: colors["onSecondary"],
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
