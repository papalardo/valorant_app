import 'package:flutter/cupertino.dart';
import 'package:valorant_app/modules/home/ui/home_screen.dart';
import 'package:valorant_app/utils/constants.dart';

class SafeAreaCustomScrollView extends CustomScrollView {
  const SafeAreaCustomScrollView({
    super.key,
    super.slivers,
  });

  @override
  List<Widget> buildSlivers(BuildContext context) {
    return [
      SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).padding.top + kScreenPaddingTop)),
      ...slivers,
      const SliverToBoxAdapter(child: SizedBox(height: kNavigationBarHeight + kScreenPaddingBottom))
    ];
  }

  static Widget top(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).padding.top + 20));
  }

  static Widget bottom() {
    return const SliverToBoxAdapter(child: SizedBox(height: kNavigationBarHeight + 20));
  }
}
