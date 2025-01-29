import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/themes.dart';
import '../widgets/navigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          'Takip Ettiklerin',
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: Image.asset(
                    "assets/images/gonderi${index + 1}.jpg",
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(
                        Icons.photo,
                        size: 100,
                        color: Theme.of(context).colorScheme.onSecondary,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kullanıcı   ${index + 1}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSecondary),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2),
                      Text(
                        '100 beğeni',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSecondary),
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          IconButton(
                            color: Theme.of(context).colorScheme.onSecondary,
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          IconButton(
                            color: Theme.of(context).colorScheme.onSecondary,
                            icon: const Icon(Icons.comment_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
