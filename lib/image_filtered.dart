import 'dart:ui';
import 'package:flutter/material.dart';

class ImageFilteredDemo extends StatefulWidget {
  const ImageFilteredDemo({Key? key}) : super(key: key);

  @override
  State<ImageFilteredDemo> createState() => _ImageFilteredDemoState();
}

class _ImageFilteredDemoState extends State<ImageFilteredDemo> {
  double sigma = 0;
  double rotation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1682936496532-00429ddd7b6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1876&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ImageFiltered(
            imageFilter: ImageFilter.matrix(Matrix4.skewX(rotation).storage),
            child: Text("Hello Codeline Hello Codeline"),
          ),
          Slider(
            min: 0,
            max: 10,
            divisions: 10,
            label: "${sigma.toStringAsFixed(0)}",
            value: sigma,
            onChanged: (value) {
              setState(() {
                sigma = value;
              });
            },
          ),
          Slider(
            min: 0,
            max: 1,
            label: "${rotation.toStringAsFixed(0)}",
            value: rotation,
            onChanged: (value) {
              setState(() {
                rotation = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
