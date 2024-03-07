import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasa/models/apod_model.dart';
import 'package:nasa/repositories/apod_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  // ignore: non_constant_identifier_names
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: bla.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 500,
                        width: double.maxFinite,
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
                      ListTile(
                        title: Text(
                          bla[index].title!,
                        ),
                        subtitle: Text(
                          bla[index].explanation!,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
