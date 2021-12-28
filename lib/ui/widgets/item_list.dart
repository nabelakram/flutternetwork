import 'package:flutter/material.dart';
import 'package:localdata/res/transition.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int total_rec = 0;
    return ListView.builder(
        itemCount: transition.length,
        itemBuilder: (_, index) {
          var date = transition[index].dateTime;
          total_rec++;
          return Card(
            child: ListTile(
              leading: Text(transition[index].item),
              title: Text('${date.day}/${date.month}/${date.year}'),
              subtitle: Text(transition[index].id.toString()),
              trailing: Icon(Icons.search),
            ),
          );
        });

    // return Container(
    //   height: 200,
    //   child: Text(transition[0].item),
    // );
  }
}
