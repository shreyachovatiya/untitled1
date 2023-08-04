import 'package:flutter/material.dart';

class BottomTabBarDemo extends StatefulWidget {
  const BottomTabBarDemo({Key? key}) : super(key: key);

  @override
  State<BottomTabBarDemo> createState() => _BottomTabBarDemoState();
}

class _BottomTabBarDemoState extends State<BottomTabBarDemo>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(
          controller: tabController,
          labelColor: Colors.red,
          indicatorColor: Colors.white,
          tabs: [
            Text("Chat"),
            Text("Status"),
            Text("Calls"),
          ],
        ),
      ),
    );
  }
}
