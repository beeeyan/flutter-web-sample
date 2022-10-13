import 'package:flutter/material.dart';
import 'package:flutter_web_sample/enum/resposive_type.dart';

///　サイドバーを表示するためのラッパー
///
///
class ResponsiveScaffold extends StatelessWidget {
  const ResponsiveScaffold({
    super.key,
    this.appBar,
    required this.children,
    this.selectedIndex = 0,
    required this.destinations,
    required this.onSelectedIndexChange,
    this.navigationRailWidth = 72,
    this.extendedNavigationRailWidth = 192,
    this.selectedIconTheme = const IconThemeData(color: Colors.black),
    this.unselectedIconTheme = const IconThemeData(color: Colors.black),
    this.selectedLabelTextStyle = const TextStyle(color: Colors.black),
    this.unselectedLabelTextStyle = const TextStyle(color: Colors.black),
    this.navigationRailBackgroundColor,
    this.responsiveType = ResponsiveType.large,
  });
  final AppBar? appBar;
  final List<Widget> children;
  final int selectedIndex;
  final List<NavigationRailDestination> destinations;
  final Function(int)? onSelectedIndexChange;
  final double navigationRailWidth;
  final double extendedNavigationRailWidth;
  final IconThemeData selectedIconTheme;
  final IconThemeData unselectedIconTheme;
  final TextStyle selectedLabelTextStyle;
  final TextStyle unselectedLabelTextStyle;
  final Color? navigationRailBackgroundColor;
  final ResponsiveType responsiveType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: responsiveType == ResponsiveType.small
          ? Drawer(
              child: NavigationRail(
                extended: true,
                selectedIndex: selectedIndex,
                destinations: destinations,
                onDestinationSelected: onSelectedIndexChange,
              ),
            )
          : null,
      body: Row(
        children: [
          if (responsiveType != ResponsiveType.small)
            SizedBox(
              width: responsiveType == ResponsiveType.medium
                  ? navigationRailWidth
                  : extendedNavigationRailWidth,
              height: MediaQuery.of(context).size.height,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: NavigationRail(
                          destinations: destinations,
                          selectedIndex: selectedIndex,
                          backgroundColor: navigationRailBackgroundColor,
                          onDestinationSelected: onSelectedIndexChange,
                          extended: responsiveType == ResponsiveType.large,
                          selectedIconTheme: selectedIconTheme,
                          unselectedIconTheme: unselectedIconTheme,
                          selectedLabelTextStyle: selectedLabelTextStyle,
                          unselectedLabelTextStyle: unselectedLabelTextStyle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          SingleChildScrollView(
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
