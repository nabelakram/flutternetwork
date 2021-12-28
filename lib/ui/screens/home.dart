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
          week_charts(),
          Expanded(child: Card(child: ItemList())),
          // Card(
          //     child: Column(
          //   children: [Text('...'), ItemList(), Text('***')],
          // ))
        ],
      ),
    );
  }
}

Widget get_card(dayname, percentage, daycolor) {
  return Card(
    child: Column(
      children: [
        Text(dayname),
        SizedBox(
          width: 40,
          height: 40,
          child: Card(color: daycolor, elevation: 2, child: Text("test")),
        ),
        Text('$percentage %')
      ],
    ),
  );
}

Widget week_charts() {
  final monday_color = Colors.green;
  final tuesday_color = Colors.pink;
  final wednesday_color = Colors.yellow;
  final thursday_color = Colors.blue;
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        get_card('MON', '90', monday_color),
        get_card('TUE', '44', tuesday_color),
        get_card('WED', '54', wednesday_color),
        get_card('THU', '87', thursday_color),
        get_card('FRI', '90', monday_color),
        get_card('SAT', '54', wednesday_color),
        get_card('SUN', '87', thursday_color),
        // get_card('Tue', '90'),
        // get_card('Wed', '90'),
        // get_card('Thu', '90'),
        // get_card('Fri', '90'),
        // get_card('Sat', '90'),
        // get_card('Sun', '90'),
      ],
    ),
  );
}
