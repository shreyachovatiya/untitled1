import 'dart:ui';
import 'package:flutter/material.dart';

class ImageFiltered1 extends StatefulWidget {
  const ImageFiltered1({Key? key}) : super(key: key);

  @override
  State<ImageFiltered1> createState() => _ImageFiltered1State();
}

class _ImageFiltered1State extends State<ImageFiltered1> {
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
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1449034446853-66c86144b0ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          ImageFiltered(
              imageFilter: ImageFilter.matrix(Matrix4.skewX(rotation).storage),
              child: Text("hello Codeline")),
          Slider(
            min: 0,
            max: 10,
            divisions: 10,
            label: "${sigma.toStringAsFixed(0)}",
            value: sigma,
            onChanged: (value) {
              setState(
                () {
                  sigma = value;
                },
              );
            },
          ),
          Slider(
            min: 0,
            max: 2,
            label: "${rotation.toStringAsFixed(0)}",
            value: rotation,
            onChanged: (value) {
              setState(() {
                rotation = value;
              });
            },
          )
        ],
      ),
    );
  }
}
