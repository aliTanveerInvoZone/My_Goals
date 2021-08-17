import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget listView(mediaQuery) {
  return Expanded(
      child: Container(
          color: Colors.black,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "DETAILS");
                      },
                      dense: true,
                      visualDensity: VisualDensity(vertical: 1, horizontal: 1),
                      subtitle: Text("Description",
                          maxLines: 3, style: TextStyle(color: Colors.white)),
                      title: Text(
                        "Goal Title",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Container(
                        width: 100,
                        height: 100,
                        child: TextButton(
                          child: Text(
                            "In Progress",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ));
              })));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery;
    mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
              color: Colors.black,
              padding: EdgeInsets.all(20),
              width: mediaQuery.size.width,
              child: Text(
                "My Goals",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          listView(mediaQuery),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "ADDGOAL");
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
