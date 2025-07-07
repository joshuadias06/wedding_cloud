import 'package:flutter/material.dart';
import 'core/app_theme.dart';

import 'features/gallery/pages/gallery_page.dart';
import 'features/camera/pages/camera_page.dart';
import 'features/menu/pages/menu_page.dart';
import 'features/confirmation/pages/confirmation_page.dart';
import 'features/home/pages/home_page.dart';

void main() {
  runApp(const WeddingCloudApp());
}

class WeddingCloudApp extends StatelessWidget {
  const WeddingCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wedding Cloud',
      theme: AppTheme.lightTheme,
      initialRoute: '/home',
      routes: {
        '/home' : (context) => const HomePage(),
        '/gallery': (context) => const GalleryPage(),
        '/camera': (context) => const CameraPage(),
        '/menu': (context) => const MenuPage(),
        '/confirmation': (context) => const ConfirmationPage(),
      },
    );
  }
}
