import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = 'Grid list';

    List<String> listData = [
      'Balbhadra',
      'Paraya',
      'Kajaliya',
      'luchi',
      'Maulik'
    ];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(listData.length, (index) {
            return Center(
              child: Text(
                listData[index].toString(),
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}
