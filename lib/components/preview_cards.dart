import 'package:flutter/material.dart';
import 'package:get_synced/models/category.dart';

class PreviewCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            Category category = categories[index];
            return Container(
              width: 140,
              margin: index == 0
                  ? EdgeInsets.only(right: 16, top: 4, bottom: 4)
                  : EdgeInsets.only(right: 16, top: 4, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image(
                          image: NetworkImage(category.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      child: Text(
                        category.categoryName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
