import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
 final String? tittle;
 final String? image;
 final bool? like;
 
  const Mycard({super.key, required this.tittle, required this.image, required this.like});

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          width: 250,
          child: FlutterLogo(),
        ),
        SizedBox(
          width: 250,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(widget.tittle!),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
            ],
          ),
        )
      ],
    );
  }
}