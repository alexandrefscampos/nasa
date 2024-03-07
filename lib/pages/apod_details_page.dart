import 'package:flutter/material.dart';
import 'package:nasa/core/extensions.dart';
import 'package:nasa/models/apod_model.dart';
import 'package:nasa/widgets/apod_image.dart';

class APODDetailsPage extends StatelessWidget {
  const APODDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final apod = ModalRoute.of(context)!.settings.arguments as APODModel;

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
              child: APODImage(url: apod.url!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(apod.title!),
                const SizedBox(height: 4),
                Text(apod.date!.toAPODDate()),
                const SizedBox(height: 8),
                Text(apod.explanation!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
