import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../core/themes.dart';
import '../widgets/navigationbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          'Kullanıcı Adı',
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
        actions: [],
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Provider.of<ThemeProvider>(context).isDarkMode
                          ? Icons.light_mode
                          : Icons.dark_mode,
                      color: Theme.of(context).colorScheme.onSecondary,
                      size: 34,
                    ),
                    onPressed: () {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                    },
                  ),
                  const SizedBox(height: 20),
                  Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: colors["onSecondary"],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: colors["onSecondary"],
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
