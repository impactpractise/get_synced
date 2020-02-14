import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  FilterButton({@required this.filterTitle});
  final String filterTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey[400],
                    width: 1.0,
                    style: BorderStyle.solid)),
            child: Text(
              filterTitle,
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }
}
