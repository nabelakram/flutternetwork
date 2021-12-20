import 'package:flutter/material.dart';
import 'package:localdata/ui/widgets/item_list.dart';
//import 'package:../widgets/item_list.dart';

class Homeapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense App'),
        backgroundColor: Colors.green,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(child: Card(child: ItemList())),
          Card(
            child: Container(
              height: 100,
              width: 400,
              color: Colors.blue,
              child: Text('data'),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget get_card(get_color) {
//   return Card(
//     child: Container(
//       height: 100,
//       width: 400,
//       color: Colors.pink,
//       child: Text('data'),
//     ),
//   );
// }
