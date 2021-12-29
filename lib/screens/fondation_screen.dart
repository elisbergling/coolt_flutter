import 'package:coolt_flutter/constants/colors.dart';
import 'package:coolt_flutter/providers/providers.dart';
import 'package:coolt_flutter/providers/state_providers.dart';
import 'package:coolt_flutter/widgets/profile.dart';
import 'package:coolt_flutter/widgets/search_bar.dart';
import 'package:coolt_flutter/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FondationScreen extends HookWidget {
  const FondationScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final pageIndex = useProvider(pageIndexProvider);
    final screens = useProvider(screensProvider);
    return Row(
      children: [
        SideMenu(),
        Container(
          width: MediaQuery.of(context).size.width - 304,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: grey,
              elevation: 0,
              leading: Container(),
              actions: [
                SearchBar(),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  splashRadius: 20,
                  icon: Icon(Icons.notifications_none_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 20,
                  icon: Icon(Icons.settings),
                ),
                Profile(),
              ],
            ),
            body: screens[pageIndex.state],
          ),
        ),
      ],
    );
  }
}
