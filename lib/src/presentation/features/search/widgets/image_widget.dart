import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {Key? key,
      required this.imageUrl,
      required this.onTap,
      required this.isFav,
      required this.ownerName,
      required this.imageSize})
      : super(key: key);

  final String imageUrl;
  final VoidCallback onTap;
  final bool isFav;
  final String ownerName;
  final String imageSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        if (isFav)
          Positioned(
            right: 5,
            child: Container(
              height: 50,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.pink),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User: $ownerName',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text('Size:$imageSize KB')
              ],
            ),
          ),
        )
      ]),
    );
  }
}
