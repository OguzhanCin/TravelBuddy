import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
          style: TextStyle(
              color: Theme.of(context).colorScheme.onSecondary,
              fontWeight: FontWeight.bold),
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
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      color:
                          Theme.of(context).colorScheme.surfaceContainerHighest,
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
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        color: Colors.black.withOpacity(0.2),
                        child: Text(
                          'Kullanıcı ${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mutlaka gezilmesi gereken bir yer',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          IconButton(
                            color: Theme.of(context).colorScheme.onSecondary,
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '100 beğeni',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                          ),
                          IconButton(
                            color: Theme.of(context).colorScheme.onSecondary,
                            icon: const Icon(Icons.comment_outlined),
                            onPressed: () {},
                          ),
                          Text(
                            '100 Yorum',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
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
