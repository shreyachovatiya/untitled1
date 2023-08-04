import 'package:flutter/material.dart';

class DraggableScrollableSheetDemo extends StatefulWidget {
  const DraggableScrollableSheetDemo({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetDemo> createState() =>
      _DraggableScrollableSheetDemoState();
}

class _DraggableScrollableSheetDemoState
    extends State<DraggableScrollableSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          ),
          DraggableScrollableSheet(
            minChildSize: 0.1,
            maxChildSize: 0.9,
            snap: true,
            snapSizes: [0.3, 0.6],
            builder: (context, scrollController) {
              return ListView.builder(
                controller: scrollController,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    height: 30,
                    width: 300,
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.blue.withOpacity(0.4),
                    child: Center(child: Text("Index ${index}")),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
