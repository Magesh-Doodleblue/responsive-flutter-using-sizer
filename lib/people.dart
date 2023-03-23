import 'package:flutter/material.dart';

class peopleWidget extends StatelessWidget {
  const peopleWidget({
    Key? key,
    required List<String> imageUrls,
  })  : _imageUrls = imageUrls,
        super(key: key);

  final List<String> _imageUrls;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _imageUrls.length,
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text('Image ${index + 1}'),
          ),
          child: Image.network(_imageUrls[index], fit: BoxFit.cover),
        );
      },
    );
  }
}
