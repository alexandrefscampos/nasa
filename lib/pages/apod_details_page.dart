import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasa/models/apod_model.dart';

class APODDetailsPage extends StatelessWidget {
  final APODModel apod;
  const APODDetailsPage({
    super.key,
    required this.apod,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Details'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 500,
            width: double.maxFinite,
            child: Hero(
              tag: apod.date!,
              child: CachedNetworkImage(
                imageUrl: apod.url!,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator.adaptive(),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ), //TODO: improve it
              ),
            ),
          ),
          ListTile(
            title: Text(
              apod.title!,
            ),
            subtitle: Text(
              apod.explanation!,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
