import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class APODImage extends StatelessWidget {
  final String url;
  const APODImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      placeholder: (context, url) => const Center(
        child: SizedBox(
          height: 50,
          width: 50,
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
      ), //TODO: improve it
    );
  }
}
