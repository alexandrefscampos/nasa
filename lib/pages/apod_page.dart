import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasa/models/apod_model.dart';
import 'package:nasa/pages/apod_details_page.dart';
import 'package:nasa/repositories/apod_repository.dart';

class APODPage extends StatefulWidget {
  const APODPage({super.key, required this.title});

  final String title;

  @override
  State<APODPage> createState() => _APODPageState();
}

class _APODPageState extends State<APODPage> {
  List<APODModel> bla = [];

  @override
  void initState() {
    super.initState();
    getAPOD();
  }

  getAPOD() async {
    final apodRepository = APODRepository();
    bla = await apodRepository.getAPOD();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Picture of the day'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: bla.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => APODDetailsPage(
                                apod: bla[index],
                              ),
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 200,
                          width: double.maxFinite,
                          child: Hero(
                            tag: bla[index].date!,
                            child: CachedNetworkImage(
                              imageUrl: bla[index].url!,
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator.adaptive(),
                              errorWidget: (context, url, error) => const Icon(
                                Icons.error,
                              ), //TODO: improve it
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          bla[index].title!,
                        ),
                        subtitle: Text(
                          bla[index].date!,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
