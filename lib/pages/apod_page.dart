import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nasa/core/extensions.dart';
import 'package:nasa/models/apod_model.dart';
import 'package:nasa/repositories/apod_repository.dart';
import 'package:nasa/widgets/apod_image.dart';

class APODPage extends StatefulWidget {
  final APODRepository apodRepository;
  const APODPage({super.key, required this.apodRepository});

  @override
  State<APODPage> createState() => _APODPageState();
}

class _APODPageState extends State<APODPage> {
  List<APODModel> _apodList = [];
  List<APODModel> currentAPODList = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    getAPOD();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  getAPOD() async {
    _apodList = await widget.apodRepository.getAPOD();
    _apodList.sort((a, b) => b.date!.compareTo(a.date!));
    setState(() {});
  }

  List<APODModel> get apodList =>
      currentAPODList.isEmpty ? _apodList : currentAPODList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Search by name or date (yyyy-mm-dd)',
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (value) {
            if (_debounce?.isActive ?? false) _debounce?.cancel();
            _debounce = Timer(const Duration(milliseconds: 500), () {
              final parsedValue = DateTime.tryParse(value);
              currentAPODList = _apodList
                  .where((element) => parsedValue != null
                      ? element.date!.isAtSameMomentAs(parsedValue)
                      : element.title!
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                  .toList();
              setState(() {});
            });
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: apodList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/apod_details',
                        arguments: apodList[index],
                      );
                    },
                    leading: SizedBox(
                      height: 200,
                      width: 200,
                      child: Hero(
                        tag: apodList[index].date!,
                        child: APODImage(url: apodList[index].url!),
                      ),
                    ),
                    title: Text(apodList[index].title!),
                    subtitle: Text(
                      apodList[index].date!.toAPODDate(),
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
