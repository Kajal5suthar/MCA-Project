import 'package:flutter/cupertino.dart';

class ActionSheetExmaple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoActionSheet(
      title: const Text('hello'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Text('yes'),
          onPressed: () {
            Navigator.pop(context, 'yes');
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('yes'),
          onPressed: () {
            Navigator.pop(context, 'yes');
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.pop(context, 'cancle');
        },
        child: const Text('cancle'),
        isDefaultAction: true,
      ),
    );
  }
}
