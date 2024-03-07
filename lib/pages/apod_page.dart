import 'package:flutter/material.dart';
import 'package:nasa/core/extensions.dart';
import 'package:nasa/models/apod_model.dart';
import 'package:nasa/repositories/apod_repository.dart';
import 'package:nasa/widgets/apod_image.dart';

class APODPage extends StatefulWidget {
  const APODPage({super.key});

  @override
  State<APODPage> createState() => _APODPageState();
}

class _APODPageState extends State<APODPage> {
  List<APODModel> bla = [];
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    getAPOD();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  getAPOD() async {
    final apodRepository = APODRepository();
    bla = await apodRepository.getAPOD();
    bla.sort((a, b) => b.date!.compareTo(a.date!));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search by name or date',
            prefixIcon: Icon(Icons.search),
          ),
        ),
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
                  return ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/apod_details',
                        arguments: bla[index],
                      );
                    },
                    leading: SizedBox(
                      height: 200,
                      width: 200,
                      child: Hero(
                        tag: bla[index].date!,
                        child: APODImage(url: bla[index].url!),
                      ),
                    ),
                    title: Text(bla[index].title!),
                    subtitle: Text(
                      bla[index].date!.toAPODDate(),
                    ),
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
