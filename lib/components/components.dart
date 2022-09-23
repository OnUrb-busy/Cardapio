import 'package:flutter/material.dart';
import '../details.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String price;
  const MenuCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(
                  description: description,
                  image: image,
                  price: price,
                  title: title,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
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
                color: const Color.fromARGB(255, 255, 61, 31),
                width: double.infinity,
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
                    Text(price),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
