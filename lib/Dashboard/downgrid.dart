import 'package:flutter/material.dart';

class DownGrid extends StatelessWidget {
  const DownGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.only(left: 0.0),
        //  / mainAxisSpacing: 20.0,
        crossAxisSpacing: 1.0,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.phone_android,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mobile",
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.data_usage,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "DTH",
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.lightbulb_outline,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Electricity",
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Credit card",
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Landline',
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.indigo,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Landline',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
