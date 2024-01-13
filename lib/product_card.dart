import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String title;
  double price;
  String url;
  Color backgroundColor;
  ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.url,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text('$price\$'),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image(
                image: AssetImage(url),
                height: 175,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
