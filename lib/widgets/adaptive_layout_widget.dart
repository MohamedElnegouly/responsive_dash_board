import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.disktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, disktopLayout;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1300) {
          return tabletLayout(context);
        } else {
          return disktopLayout(context);
        }
      }),
    );
  }
}
