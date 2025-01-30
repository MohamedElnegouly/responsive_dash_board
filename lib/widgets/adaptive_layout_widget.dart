import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sized_config.dart';

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
        if (constraints.maxWidth < SizedConfig.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizedConfig.desktop) {
          return tabletLayout(context);
        } else {
          return disktopLayout(context);
        }
      }),
    );
  }
}
