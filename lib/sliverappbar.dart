import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({Key? key}) : super(key: key);

  @override
  State<SliverAppBarDemo> createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            toolbarHeight: 50,
            pinned: true,
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.network(
                "https://images.unsplash.com/photo-1585016495481-91613a3ab1bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJhbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover,
              ),
              title: Text("Sliver App Bar"),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.orange,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
