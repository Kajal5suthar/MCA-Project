import 'package:flutter/material.dart';

class DataTableExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DataTableState();
  }
}

class DataTableState extends State<DataTableExample> {
  void getSelectedRowInfo() {
    print('Selected Item Row Name Here...');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Data table'),
      ),
      body: Container(
        child: DataTable(
          onSelectAll: (b) {},
          sortAscending: true,
          columns: <DataColumn>[
            DataColumn(
              label: Text('Item'),
            ),
            DataColumn(
              label: Text('Price'),
            ),
          ],
          rows: items
              .map(
                (itemRow) => DataRow(
                      cells: [
                        DataCell(
                          Text(itemRow.itemName),
                          showEditIcon: false,
                          placeholder: false,
                        ),
                        DataCell(
                          Text(itemRow.itemPrice),
                          showEditIcon: true,
                          placeholder: false,
                          onTap: getSelectedRowInfo,
                        ),
                      ],
                    ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class ItemInfo {
  String itemName;
  String itemPrice;

  ItemInfo({
    this.itemName,
    this.itemPrice,
  });
}

var items = <ItemInfo>[
  ItemInfo(
    itemName: 'Item A',
    itemPrice: '250',
  ),
  ItemInfo(
    itemName: 'Item B',
    itemPrice: '100',
  ),
  ItemInfo(
    itemName: 'Item C',
    itemPrice: '150',
  ),
];
