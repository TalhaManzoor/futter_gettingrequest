
import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
  const gridview({@required this.image}) ;

  final List image;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        addAutomaticKeepAlives: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: image.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                image[index]['url'],
                fit: BoxFit.fill,
              ),
            ),
          );
        });
  }
}