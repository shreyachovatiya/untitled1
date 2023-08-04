import 'package:flutter/material.dart';

class SliverAppBarpage extends StatefulWidget {
  const SliverAppBarpage({Key? key}) : super(key: key);

  @override
  State<SliverAppBarpage> createState() => _SliverAppBarpageState();
}

class _SliverAppBarpageState extends State<SliverAppBarpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.arrow_back),
            expandedHeight: 120,
            pinned: true,
            backgroundColor: Colors.blueGrey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.network(
                "https://images.unsplash.com/photo-1682936496532-00429ddd7b6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=338&q=80",
                fit: BoxFit.cover,
              ),
              title: Text("WhatsApp"),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.pink,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.orange,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
