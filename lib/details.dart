import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String price;
  const DetailsPage(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 250,
            child: Image.network(
              image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  price,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  description,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
