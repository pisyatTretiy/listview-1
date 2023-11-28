import 'package:flutter/material.dart';

const List<String> itemslist = <String>["Первый", "Второй", "Третий", "Четыртый", "Пятый", "Шестой", "Седьмой"];
const List<int> numitems = <int>[1, 2, 3, 4, 5, 6, 7];

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Khrulenko Vladislav', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: itemslist.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(16),
            width: double.infinity - 16,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 150, 1, 102),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.black,
                    onPressed: () {
                    },
                    child: Text(
                      itemslist[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Надпись ${numitems[index]}',
                      style: const TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
