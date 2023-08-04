import 'package:flutter/material.dart';
import 'DataTable1.dart';
import 'data_table.dart';
import 'image_filtered.dart';

class BottomTabBar1page extends StatefulWidget {
  const BottomTabBar1page({Key? key}) : super(key: key);

  @override
  State<BottomTabBar1page> createState() => _BottomTabBar1pageState();
}

class _BottomTabBar1pageState extends State<BottomTabBar1page>
    with TickerProviderStateMixin {
  List<Widget> Screens = [];

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
          indicatorColor: Colors.red,
          labelColor: Colors.indigo,
          tabs: [
            Text("Chats"),
            Text("Status"),
            Text("Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [DataTableDemo(), DataTable1Page(), ImageFilteredDemo()],
      ),
    );
  }
}
