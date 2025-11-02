import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/core/widgets/custom/custom_app_bar.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [CustomAppBar.backAppBar()],
        ),
      ),
    );
  }
}
